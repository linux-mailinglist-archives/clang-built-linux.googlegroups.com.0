Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUPJZD2QKGQE7MA4ZNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F025F1C6679
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 05:53:54 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id y73sf1174140ybe.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 20:53:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588737234; cv=pass;
        d=google.com; s=arc-20160816;
        b=XY1/h2Kl1lMj4z5nGVqueII2nrJG2Rxfes7OeNyCB9ZTAKbVZnFU7fYPAvaTKBpb+p
         XXhudreJsPqDKAuFa5taGIQG7PlQKH0tZWf6ZxjeRZShvT3eyxNl8Lr3FISY4gJDAV/H
         WGao/vgyujw8kRNjGo4d9YY/HL3BYNC/qNT9F9rVuGoywB/KmByvOHuPMSYMVylZ7Sd/
         /h3JWZAiUpWVw4WG2DUkMPIdGuATwRhgCWbtGkse1y/x38SDs384fxHhfszfDoL8tvqA
         ExWKeZOrMmdIw/hf8T/8M06Op9lEf2nh1x2KryfkHW8N3Jpp4B651Xto0NAK2iS0gdwf
         pNGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=unmsRxKxSLAB2ieSoXl1TIDXx999dY/a7q+BJvzjpps=;
        b=wxu98rsDGT2oMYgVhK0mHHA8al367J9ffBZAJAVNNO1zMsD03AEI82+S7cUHQzkfo5
         57fR+OeDkYW/4qKTZvugUIzxqBkPjS2tTYe9a4ryEC9t0tOWZECvVrCDJNbAAuMUREB/
         8yOYFiv0LQvZG0cQwdxOnDOwy1A4VVChf/SB9yYe983VIajN2xxoDXleal0kSKTYSmrL
         ESpMmaM7h3/D9BIGAweUSw+epmfP78V1gbFgeMlz6wmUuaMLAkWg7w9xDYiJxEs/0P7N
         zHjUG9fFbc9haG4HJUWTwhI9y0M48+tXdgKhv93Un2k03x32XUDvgcSaeKIVH0/a2VVG
         X32Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UV8kYDc0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=unmsRxKxSLAB2ieSoXl1TIDXx999dY/a7q+BJvzjpps=;
        b=donI5xfSaIzrcJ4aic2Ee+0y9kBPiPbr5ya1+wo91+ON+zwyDpzEQLIO5p+a3/8vud
         E2ZrlPt8mavnztvSUsM5y+C2zSmuuiVnQEz5f9nOruSih8DEbHaeBjFilLoshHavNK0B
         kMW8HlXa+oSTVrATA/gLWBIfi6pGLNdj4BFAg96amCEiOYg68S4JSGTXHJTXtprR5WlU
         /ZOvF04LuCxrHXqQzJrrwChjphcbVNX8kA4bTlfR4AL/zAYFm0Kzc45ex22PWOS5Dods
         7H3TRtIN07j1q6zGXXzJ2q8Iivs7Mplmeuapt0ZhU0Rdz9PSdk2bK9L7qxK6FCCqavPE
         91ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=unmsRxKxSLAB2ieSoXl1TIDXx999dY/a7q+BJvzjpps=;
        b=SAzv+9NOSzBiYbMzyhFINvT9x6zOFsvdAdcR8j5zt0hBqk8EkJZjn2+TtWJyr8Lsct
         d+Xz0JAR9AS/f6EjhMVR7z9KQHg/F0r7O47hPpcG4sNElL87csgMbUjDP7U5WVN7XVU4
         Efc3dZubngEt0POs9IAp56kprEygbJu0RWTDmeUb9U66zZQjUjnQzHiggvZHf+sOK2jX
         MQZ2Zg2yNM0hlrOyU9xlKLjyAu9Q+9EtZexw+meprDxiucjJXgOKDQhi0uJRtuDjhWaj
         XBQ4I3/pQDtxVOZyp1RX5JS0bWnwFiL/gJxgZsOKdjj56xIMQFtVocsWCjtw3mTMsoKz
         4brg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=unmsRxKxSLAB2ieSoXl1TIDXx999dY/a7q+BJvzjpps=;
        b=OA1IaGx5jA+tWZ2q7R3U2eGj7U/P7iREY3iJuovVY+qOp7ZbEYzrwpOslBbtkhT8O6
         BqLLuA2LuRfBxSB/vZSYpRAhzfy9wPtAB/6PR4zRbo1qYDDKiVl2iebGlwySyv6FeUZ3
         2wehl1QAhNEycNkvB2UudIPK0oXUmFllVx5BOqMq7xLSE1gsouVocaHhU5KGD6HTUcpD
         oRs/iTeCvdnMSEeTNNRkguBA+iHuqAMX58xAwqCKb0ZyNzbtsYx9EsVw/ueJ9p+jQZbH
         KMZBfYElTQzJeuwM9nkSKX5kmWhatoECUfo8VDvIirMDiKfCRf++G++XhRn7j2cqHJ7V
         IJ6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub2GAK4/OWguAfwUI1Yrw5xDIflUXyEHmXsokDetPBGQAxpGHYk
	+PIjTNq1cM/JPzINUt44fxc=
X-Google-Smtp-Source: APiQypLwJn+97/VxHhgVv56FTD2E2ewjQExXo9Bpl4UgZNDevS0MAzIOkMW2JAs0mLVZKR246uGRdw==
X-Received: by 2002:a5b:9d0:: with SMTP id y16mr10365350ybq.81.1588737233976;
        Tue, 05 May 2020 20:53:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:76c9:: with SMTP id r192ls173743ybc.11.gmail; Tue, 05
 May 2020 20:53:53 -0700 (PDT)
X-Received: by 2002:a25:4443:: with SMTP id r64mr9810332yba.41.1588737233567;
        Tue, 05 May 2020 20:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588737233; cv=none;
        d=google.com; s=arc-20160816;
        b=CSksUjVZeo+7JNpgcsm6orP9VATBoA42x+jY6WZQg8HrkycwaPBpPMU8gi7w1gJm2G
         avpKVIvAW12xQTnWi4hfLA8iG16n9TQ9+4e0LeJv6b7g0FU4ZY4hkmznzu+qikZDsZQe
         75rFGDUY1WWDF3y3YKZ96qTSHV7R1UpvHXSiNPjylIsW+XU/Gjo2AM7Li7WyXipg+dLL
         nj8SjoKqL8v6qbrO9TF9B2kfrfbV4r6zJfukvCcRACMT7PIexnNYo8LLoUr32WODVSao
         tvPjWfyRmrANVqdBaq3h7vl2GK/t6JqxWRdOcK/pbm8o0yE2dWIZ8FZF1laS0XsjDzds
         8t+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OyhbL7JQAgJYt8Ohkmi+6EE1kJF1GD6e396x9FyAdy0=;
        b=J0edGCeONzXw1+m0G+CPObVhd0THSqZorOZoAjt8ZigNDIeMU9W1gHcFuKIdKYXsca
         3riFfj3geeRQI/mL8xxpJTG3ovbT1p2cswupyWW21paATP7t6Z3KvNWKB5KTOP/kVKL5
         MSQuv41GNLv2xeXQoNEphbGVLVxZy0MknB1gyXBTfvj9tGtyGKCq7GsGKkfAnkFVKxvY
         2vpz5jzzk7FuAre0A9LiEBqFp+CKiPxOYP+6wMSPVUppQ4ri4tYBqxFUrwavNO9SMN1G
         BDQnOTuDly5ubqk2bub13f24H1HTbE5Qp7mPwB+sbZXju2Pcud7TQfpdMISQjq6S4wFE
         6weg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UV8kYDc0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h14si52279ybq.0.2020.05.05.20.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 20:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id e20so277345otk.12
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 20:53:53 -0700 (PDT)
X-Received: by 2002:a05:6830:1be6:: with SMTP id k6mr4631845otb.299.1588737233082;
        Tue, 05 May 2020 20:53:53 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l11sm311163oom.15.2020.05.05.20.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 20:53:52 -0700 (PDT)
Date: Tue, 5 May 2020 20:53:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, arnd@arndb.de,
	George Burgess <gbiv@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] security: disable FORTIFY_SOURCE on clang
Message-ID: <20200506035351.GA599026@ubuntu-s3-xlarge-x86>
References: <202005051617.F9B32B5526@keescook>
 <20200506001453.764332-1-Jason@zx2c4.com>
 <202005051953.AF54DA4@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005051953.AF54DA4@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UV8kYDc0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 05, 2020 at 07:54:09PM -0700, Kees Cook wrote:
> On Tue, May 05, 2020 at 06:14:53PM -0600, Jason A. Donenfeld wrote:
> > clang-10 has a broken optimization stage that doesn't allow the
> > compiler to prove at compile time that certain memcpys are within
> > bounds, and thus the outline memcpy is always called, resulting in
> > horrific performance, and in some cases, excessive stack frame growth.
> > Here's a simple reproducer:
> > 
> >     typedef unsigned long size_t;
> >     void *c(void *dest, const void *src, size_t n) __asm__("memcpy");
> >     extern inline __attribute__((gnu_inline)) void *memcpy(void *dest, const void *src, size_t n) { return c(dest, src, n); }
> >     void blah(char *a)
> >     {
> >       unsigned long long b[10], c[10];
> >       int i;
> > 
> >       memcpy(b, a, sizeof(b));
> >       for (i = 0; i < 10; ++i)
> >         c[i] = b[i] ^ b[9 - i];
> >       for (i = 0; i < 10; ++i)
> >         b[i] = c[i] ^ a[i];
> >       memcpy(a, b, sizeof(b));
> >     }
> > 
> > Compile this with clang-9 and clang-10 and observe:
> > 
> > zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-10 -Wframe-larger-than=0 -O3 -c b.c -o c10.o
> > b.c:5:6: warning: stack frame size of 104 bytes in function 'blah' [-Wframe-larger-than=]
> > void blah(char *a)
> >      ^
> > 1 warning generated.
> > zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-9 -Wframe-larger-than=0 -O3 -c b.c -o c9.o
> > 
> > Looking at the disassembly of c10.o and c9.o, one can see that c9.o is
> > properly optimized in the obvious way one would expect, while c10.o has
> > blown up and includes extern calls to memcpy.
> > 
> > But actually, for versions of clang earlier than 10, fortify source
> > mostly does nothing. So, between being broken and doing nothing, it
> > probably doesn't make sense to pretend to offer this option. So, this
> > commit just disables it entirely when compiling with clang.
> > 
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: LKML <linux-kernel@vger.kernel.org>
> > Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: George Burgess <gbiv@google.com>
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Link: https://bugs.llvm.org/show_bug.cgi?id=45802
> > Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> 
> Grudgingly,
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> -- 
> Kees Cook
> 

I feel like you should finish your investigation into how broken this
actually is before we give it the hammer like this but if it is going
in regardless...

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506035351.GA599026%40ubuntu-s3-xlarge-x86.
