Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBT4D7X3QKGQEVQ5444Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D28213BD9
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 16:33:52 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id o11sf21852472qti.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 07:33:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593786831; cv=pass;
        d=google.com; s=arc-20160816;
        b=HBLu18R7I/PvnixaVw+ry01V1Rfu9dt4Lo4P+WsewrBWld5Ye+4eCwx+slLtv+8wcS
         ADsALWndkdnuf5+kxeDHWJr1tn6GO5CoUX9VomEX37wVRqDZpPMxcTcfbqPK/A2Z6MPJ
         prsuDpM1NrsnYv9qdy56ZjjkROxPqTGJccGH5RKxbrimseZR5MOeUPTwNi2yViVCN+mY
         ZYzLFoVF2d4dASE9sbeTtLYL2oi+4G+XtwJ8XvZeOIgcJkF+L6Qb8enSfoWmCz34fH2r
         xbmg1pMF5sbRlnR45+KajEVBv4+iXq6h+bMq2kVFls3o0Gd68whXhJLA4ocfZ+/81uVf
         uE+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TxIC0oTHs9M3dI4L0TvduPpe2Lif4MLGpXkkC65nsso=;
        b=htNd0NZiqGQtxSRp/wsvGbFH+2F4XDclDEYO/Y42qv4EIq/rOOEz6UXVb2AyvYEI6P
         arcuLo2wmGJ/crhPa0eor/8LUGBx1qe0s+4zNA2v9VtRea8GZmARCGwXl0ZneXCxQD3z
         esm7ZcZYzEGL/lOFE/bnYlWJD/gvQMYumFXXSLyFWkDqvofGC73SMzT8DAR3WYJpZdsx
         HsZ8BkzucupYBppVVN5c3NPUTaIywmuvG/XNV3DAYeMCRjwzHXxr5apMGs+I+XWmDG67
         DP0zqzfydS4Aosu+QcpF7PrMnQMF+89KDcsLN5f3DZT0MHywYPLlMZ9/MBPl7NVfAvpk
         M8ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piHoVbQo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TxIC0oTHs9M3dI4L0TvduPpe2Lif4MLGpXkkC65nsso=;
        b=tXCWTDV3Fn4tghffkVt80HHb8JwCnqcx68mflUt8OSkRtBTEkWrrUfJcp32bqacfgi
         7lLUvpsNvhBo/5IBSkYWR5nXfsWr+jIVf0qaR2Hx5bpNAQHOLw5v5aPU2w+wD5kOkJSs
         CTJkTnB/hBtQ+q4utYLQkJnucfx6unqdK07WPdTIVupzoHk42UC8BN+R0rVBO7EFWM4U
         RTUxxGsaPwUuJOJaHfVFo98WIRiqUYNJKjHldMM0SYMnxNjivr4few2DT9CnMmW2CyJB
         BPxoww3HSHU2jrjYNxP9QolnYrsnqhEJ5uX7IsVSccvazSrzf0ZFaDeJO+68whQ/R2Zq
         uKeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TxIC0oTHs9M3dI4L0TvduPpe2Lif4MLGpXkkC65nsso=;
        b=rtotsBLzyVGQ1YSh3ZvufNWRFWwddxDpLzRJ6Ze5H0DerdFSSIUGgbr6IDz7NMdL+2
         g1q6WcfBl/sGKOTVXC0S0H+5NmWeGxcPWWd7/TQi/f9n1ibeQk4vpAQjhcUqBwWpp9/v
         pLypA6wZPfprPZzDRexWoOV3GxOxhqXsATt2n6ksnspHrdOIAd/jN8YspoYz4TvZ/KEj
         DkagFAymGL1wp8JuMmrA9OvFpe99u5HFjE1zxMTr7TkSdbFM5fxSMvKWfU2LDS+PZ6QK
         YMUkizoKVNvu3DdLfUQ9Puv0I3vO6yfYKQ8w8ZmwxgsZ4wTg60Mgk3Yey58pcJC8/tbC
         YeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TxIC0oTHs9M3dI4L0TvduPpe2Lif4MLGpXkkC65nsso=;
        b=ZF80cCzwcVkhk7P4PsXLZqxunzIwQ3PYQ+5+DPbN7+AyMJ43Xm7dePRbYnUHqbdTTw
         hQrOn6h3y0C4ir0N3SR7YeW803gY5onoWPCA5BzXhTgyQ5PZwELInGA3ddfeD1KgNSBo
         o/5Yjngsyxo6Fg4cT0EJsU4+WwtW6FOXWi6fL5zgCH+VsuQfqm0OdFonQcIayzZ3cVl1
         doOb4ytnDsuNmyP5/DLbAHvc2R39GH+HGV+HrkXAtCp7+slcg3vzT2jzvOEizF+jgah3
         pwxNfbw5cACb0nG0kDoBYauMsazg5M3czWEho2/KkAoWYrNTDp0AW8QbbEhFWkZUqwYc
         ESew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rtCY+yt/WfPoaNly2qnMpiYi386chzgADmNlyCYc9QnZH9jIX
	Imzl3Z7KwRBrKx7eZ0Hv7Fk=
X-Google-Smtp-Source: ABdhPJxIVsQHSTY0d+GOfgoZegqQnCEhlDkx0raqks6Ryc9Jj6+hFuLf1Cq41tcuI16qu79kgtKCGQ==
X-Received: by 2002:a0c:b88d:: with SMTP id y13mr29783068qvf.82.1593786831102;
        Fri, 03 Jul 2020 07:33:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:248:: with SMTP id q8ls4422723qkn.5.gmail; Fri, 03
 Jul 2020 07:33:50 -0700 (PDT)
X-Received: by 2002:a37:4f0e:: with SMTP id d14mr36304439qkb.8.1593786830760;
        Fri, 03 Jul 2020 07:33:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593786830; cv=none;
        d=google.com; s=arc-20160816;
        b=q8cH9wx65C2RD2OjbVHIOsKxHU2673qOgLsjVFuniUzvPMwdErY1b4/W0z/bM/Tk3T
         xdiOW3pOqn1lkFVWZ69G72OF5cnaX8PAqbXCUMIJjpQFoqrwHYUdREkh61X3Gs7FYDtw
         smXaecrJnBYFkYFH77yUrW7UlaC3PS6gy8Zq7uepnxKKIeLffe/YPjOIpBErCuMMHXMA
         vCoAOD/JSOu+mZeQQwh52F+4x/62Js6IcE+hnFJDg9Fp9AzC6YOwtuvFQHzp8EDOjiag
         xh6KhhBP7desruxjUwBljuSp/uThOXJMxIsuFanH8Y3pOz34Hrr0H4LcUPZPys/w4yw4
         L1fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TEiqJa9+FS+SQXQKIC7/ALNi4cJmrJm7CDMMd+hF6lk=;
        b=ZJqMavyS5psUoSS1PMEJwTnIYMPlW8yAEdqVkAuIgQJ74WtrOdn2dP/ybk9iewQUUN
         xs6RD+rBsq9OO4043ArRFNgyilGyA1nULzLKlDtTcVpx2m4CNCPJXRNxP0LIvd1KAFC0
         XXezNsMoSX4XYvZOcjUIARdzlycP9teUY6y9NGecJKThteYdpLqxAtpi5gajC6UTLd0O
         3dEFVWgfSBdFxQ9C4ZOvOMBk8HWHsB2qPlPLKqsDctEDLGWpiF3v05hU05VrwzkUhFem
         ESoPXx/80exPKp1qwdBbOeUEjMKPJn0ny9HG0ioTKN8ZC/SNtnGjKqq4CrjdH+E/cMyC
         pOvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piHoVbQo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id j9si456650qkg.6.2020.07.03.07.33.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2020 07:33:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id o3so10072915ilo.12
        for <clang-built-linux@googlegroups.com>; Fri, 03 Jul 2020 07:33:50 -0700 (PDT)
X-Received: by 2002:a92:d843:: with SMTP id h3mr18966003ilq.255.1593786830335;
 Fri, 03 Jul 2020 07:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200622232434.162730-1-caij2003@gmail.com> <20200703044832.GD23200@gondor.apana.org.au>
 <CA+icZUWwpY9rnfgyy81-78fH+PH4wmAS-+yZFBDCjBbARabQfg@mail.gmail.com> <20200703125949.GA28373@gondor.apana.org.au>
In-Reply-To: <20200703125949.GA28373@gondor.apana.org.au>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 3 Jul 2020 16:33:39 +0200
Message-ID: <CA+icZUU=OvtLpzgQyCckCJ-LJ5asGAJgCnVQF9f+Fn-7tKn5mQ@mail.gmail.com>
Subject: Re: [PATCH] crypto, x86: aesni: add compatibility with IAS
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Jian Cai <caij2003@gmail.com>, jiancai@google.com, 
	Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com, maskray@google.com, 
	"David S. Miller" <davem@davemloft.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=piHoVbQo;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 3, 2020 at 3:00 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Fri, Jul 03, 2020 at 10:36:43AM +0200, Sedat Dilek wrote:
> >
> > Can you please apply my patch, too?
>
> Please repost your patch without the 5.7 tag.
>

Sent out a v5:

Changes v4->v5:
- Drop "5.7" tag from subject line as requested by Herbert Xu
- Add Link to LLVM bug #24494 (thanks Nick)

Thanks.

- Sedat -

> Thanks,
> --
> Email: Herbert Xu <herbert@gondor.apana.org.au>
> Home Page: http://gondor.apana.org.au/~herbert/
> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703125949.GA28373%40gondor.apana.org.au.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU%3DOvtLpzgQyCckCJ-LJ5asGAJgCnVQF9f%2BFn-7tKn5mQ%40mail.gmail.com.
