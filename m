Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRMV3D2QKGQEYR5M5XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5841D1CBC29
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 03:43:36 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id l19sf4043025qki.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 18:43:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588988614; cv=pass;
        d=google.com; s=arc-20160816;
        b=AB3ItN4UptLrds3M3+hrgPjNgkNElaxqvetogOtrwC7PN52qUzFNjhO6pX31IX0S05
         QIE8yHSiDgJ6yu9nZdqLuSktAaqQSAmTSJonNWmMcZrQWfKKEBVgjVdEoU9CucEgynxM
         leEozhGx3wNzLxGmHR+AwrY370rdo2lXCENLo9H90F5oeWgZDaVHrt94FagjASfJTiXD
         E+MfVnh5sW1UqKPPFhL7GvbaN8l+qB5YLGWm3OW6rGtEIsOkmbVlA/trnKwIb/7Z8Ljt
         qR1AYoM9JEHhHUI7yUrcSPa+zXhE0JMfFVmh8mLZMm2cMkJUHmKTdOxIccxiTfn+yuFB
         Z7mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=cQNj++ggAOIvh/+vOUwMhEaYcrfyoiQGuouQKMNU78M=;
        b=qPhiVzldtIr9KhL0LLi1Dbkr3kbFRBpxIZBoZfSVRiRIfAqIv8I+3JcGQRad04TbUK
         G9QMEznzBAuKxHtbnfyqHmGtEKZwOma09N1JR7IpLJ9nj1IjO7ET0AQv4DS7DuJqOeXP
         ko0kFCl5GS5ubKNE9cJSuUydzJ31ZvI70d1aBNJn/XSav96XfdBlU0D2OZxYRM4sTAoi
         e+THVI9DA9csRvbufQ/Svk7VdMiu7oaUX+xG0OQdhLjDcbSQX5kAD0LjZa0lCU5gbHMQ
         qlM87xt5PzY4yd2VA16+ijo3gkgxai8sJ3Zk33ndUqjkwlh/bxWfH6cGJ3EIlNr2Kb1d
         J95g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j23Gv3Wc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cQNj++ggAOIvh/+vOUwMhEaYcrfyoiQGuouQKMNU78M=;
        b=bG2NZ1W7R1xz4H+xk6nMc7gFmpHsFd3k3SJ0LJaWhnmH/eG5FgMon0fq+areVYmw46
         ZEddYjYV7YooAVxeVF/RU331nDxrVXht3vqYBzj30mTPu+mobVVxoWCQaLyAk5JEqdnQ
         Mnmh9mVOUk0sy8WUhZ1Eco1MpXkO5Li5jrkpzBy1Y7A2dQX5ULb1MRJBJurtFUWbKIIe
         xvAGhDvpdaqK56XVlnVaxs8vshB0rnWW5S2pICPlmuQc/+NKbuIsGvER7isOm5qVn9md
         YkkPNc3YqwCA+jpC5XL+ecUwfHOUNwB+vaYyUuUZIgjYyhXzt8hlFtsHLpQpf7BX1i1I
         5zRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cQNj++ggAOIvh/+vOUwMhEaYcrfyoiQGuouQKMNU78M=;
        b=eKjOgSKrw48v88Dq6ai7U0nkga1jKKlDoTqNIsZaHhf+KbtJSCOoGbrrWASFd1Uc99
         d918FLZ5ZyDvMAX8HJNtytjj0iX+ibJiLYmJr8vV3731CGhOzqbGi+Yf9C8HZQZM4q6L
         HZY2h1bFaWdwiFson09X7lYQ246PbBrb97Ht/SeqfmEZTvfYz5zFWEH9qxCg8qt/1Xn0
         LOmlrpo8zDLRkX5DLyhlqeCctchlGguRYdtpuqXP8dJJ+Kw51y/MLqFC4cCm6kZXZd5/
         OsHU5luxpVFfI+qLyAA7MLXPpZ2l2V46hBpHeoJ8aCGHBd2friUPC8/2aRSqxOnnm18I
         62Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cQNj++ggAOIvh/+vOUwMhEaYcrfyoiQGuouQKMNU78M=;
        b=IRzLzff+UB0IH7Y63YtW4zVyDIYA+vw7i2zn+M0UubDDfItGQRGI907Wsw/Ui5rM4u
         kWf40FJMoD3H0dyGtohP/Mw5JcHqrChGAvchpzGZ7ZkRHHW/Qm84kF3bKGdI+vhrXYiJ
         iaq8Mnd/ioni41vCFBschNTRWfvv5AnlsYnxIo8gAIvto9kLQjRaqsx8bIPae3yfUyPF
         j+9IEcw4VfHkkcu9FeGYtWecyAamHb5x1v5eEfiPKbpRH7di+PRx2xNTUUJh9Z258usb
         MhCA/Ragsg9DbJWocHe/0Lh+657VXzwfeNOCvkh/0s4k3G9I6xVTGtwJGoKM6t+kpdaF
         Ju8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZS7QRgLeFXXJ4CjhFdEffF+nZj4PBGPRZcNkVKsL+TT50C/VBt
	6pbC7+fhpGq0SFoawGbl9tw=
X-Google-Smtp-Source: APiQypLARWt7a8sweJT5B/MLPdz2pOXV4DqZzKpnfx4v5L+JGiXIterNFL9w+ggRHd/cMeaXAedKiQ==
X-Received: by 2002:ac8:739a:: with SMTP id t26mr5942636qtp.311.1588988613850;
        Fri, 08 May 2020 18:43:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ec06:: with SMTP id h6ls2599977qkg.9.gmail; Fri, 08 May
 2020 18:43:33 -0700 (PDT)
X-Received: by 2002:a37:8d07:: with SMTP id p7mr5828456qkd.500.1588988613568;
        Fri, 08 May 2020 18:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588988613; cv=none;
        d=google.com; s=arc-20160816;
        b=Jmoa8mIS8UIR8uW7jbTm7SsgOZaFAMFTer9tcm2Qe3FzE18ygN/xlSTSqazZEzZq1F
         T5Q2tl0v80tvyOPislgJb+Y8rkvygqhRDawRw/UdU83SAAzM1/GgMJZSmIEA8096p0uH
         Hd1I9hhASZtc9Ykag+Zkchbdqwbk1Q3nkBz9szfrC3aGKIRR8FHhD7IvRx6A2iGSP3sF
         n/zm/Axmaxik1pXNeDdBPzoDhWFqG3nfrqflQ3Z44WFXR8b8rEQZF1eJKMWYqVz8eGv2
         e4J1VEzF1bdfN0vZcqaemDnXJgT0N3BD7KDQ441FeFOAWrzBlWpEfWBhlxW32Sf3dTmK
         vCXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Qj2NsxxrxGvcjEmd9rf19lFO4hTM6QQZYMW5MhboOoc=;
        b=P5ACUmozcPsnf2YqNbgXCaNohS64TdGynpK6IuoIiqmKcTUdf2YXO0/e/Lw6lHU9To
         tXSayOMYYgdLjlca0d+L4rOa0cC3vtaIn9lAPhX2MSvvDiMkyxcF725fqC7SxOLZ+fhu
         V2b561hOwQ2J7O86SBryt+LjL1jsQs8yH2EFaB25OI+NjgJpRzU7ZxW7CGCc2BEbFpzo
         cPlVfAm9SJnl9nUYHNSMFePXYdS2fGVnLtRru9f6/zAALQjOE4tFVjkmw2cu5rFyzgAD
         9piXLZwsWMPOxuzIeAF5z5UrYyJapV32PbHIn63r/dv4BYz+P+ZWB2EbB4GZpRZvLn3q
         sMTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j23Gv3Wc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f16si295598qte.3.2020.05.08.18.43.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 18:43:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id i27so3018698ota.7
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 18:43:33 -0700 (PDT)
X-Received: by 2002:a9d:6c09:: with SMTP id f9mr4566004otq.94.1588988612824;
        Fri, 08 May 2020 18:43:32 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t15sm940863oov.32.2020.05.08.18.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 18:43:32 -0700 (PDT)
Date: Fri, 8 May 2020 18:43:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	David Sterba <dsterba@suse.com>,
	Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
	Eric Biggers <ebiggers@google.com>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] crypto: blake2b - Fix clang optimization for ARMv7-M
Message-ID: <20200509014330.GA2153306@ubuntu-s3-xlarge-x86>
References: <20200505135402.29356-1-arnd@arndb.de>
 <20200506051200.GA831492@ubuntu-s3-xlarge-x86>
 <CAK8P3a2LAgEG7epWFtUZrcgk9OwpVJd+ji9Ru_rq4L-Qk_dYbg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2LAgEG7epWFtUZrcgk9OwpVJd+ji9Ru_rq4L-Qk_dYbg@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j23Gv3Wc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, May 08, 2020 at 11:31:07PM +0200, Arnd Bergmann wrote:
> On Wed, May 6, 2020 at 7:12 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > > -
> > > +#ifdef CONFIG_CC_IS_CLANG
> >
> > Given your comment in the bug:
> >
> > "The code is written to assume no loops are unrolled"
> >
> > Does it make sense to make this unconditional and take compiler
> > heuristics out of it?
> >
> > > +#pragma nounroll /* https://bugs.llvm.org/show_bug.cgi?id=45803 */
> > > +#endif
> > >       for (i = 0; i < 8; ++i)
> > >               S->h[i] = S->h[i] ^ v[i] ^ v[i + 8];
> 
> No, that would not work, as gcc does not support this pragma.
> 
>         Arnd

Ah fair enough.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200509014330.GA2153306%40ubuntu-s3-xlarge-x86.
