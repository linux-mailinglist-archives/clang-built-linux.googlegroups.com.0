Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUGBUT4AKGQE4YFUONA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF3921C1C4
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 04:15:46 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id b69sf4854766pfb.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 19:15:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594433745; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSfX6ruTabyvp1lYq6vmIZsXckUQuXNAG/3peKUjtFUe0hQnurmbSNiYJcZJ7pjMDd
         40F1N4nX3bWjIA9mVVKAp6gz4qvdoNy36IDIZNnO9jJ8QYZfAxM++8TyKE08TygQeddH
         t0IasB55gBN0tICgVEC6DV+hWON3vYrlkAeGVsPjNSxHGwF+GWxoK3CwV7DF9F1L1dXm
         ptGRPOxfdUopSM5qF/TfliqIG1ElG9p/yAgrjVV+/7+mLXheFjjAWSAorgsTnZ4veS+G
         H8WolvhFWQKTJyTa9QeNyYFEQ2/qcSPCFJdRm1mryXcMr7PZsRvhInu6F98AjYGnLNLn
         mAJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=wQTkhzG4Z3ftiFnk875mbZJlHJFdBVQtmqgTQH+i/fA=;
        b=xQBgqzt4gvavVUzgBuE8P7Q3N6ZQvFrx+kudSej/v8+MHgeprJrlIoC67JcDE2hfXH
         fT1UzMvKhvX6TbGiRBpGjwzvGxnJd0tWKF2lNjTMFN1yp/mEwcHLX2w0dpeNBR8PRNZb
         cMVIpLFpwBN0c0bH5s3EXv6xdGBlzCOa5Qo0ahk+/d/m+EjbEevZuQkA1OxmEAx8dGU6
         hNqUBaz3Y4y6HGrtQdNVKPvMbIxbQNfeTJaTryXHLmFhOV9LEsKtTf9hwb33yEaZZFa0
         4Jxl52E/MRQXW9eEKJuGSNN9RPWPgTMAxuPZ2Mj/qgOif7rPiKjeMawjqqueUBoDIEQx
         J4og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ogPQ8EyR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wQTkhzG4Z3ftiFnk875mbZJlHJFdBVQtmqgTQH+i/fA=;
        b=kvddvk75yZ94Ay5SiszpykvVIW71e53wDVgXIkqcwSfURL/ZzI4klqWX182E1TPYFu
         Q+kRxfa1Uf0nv7qzv26EGoe5HefK/ID/IDsFktVx/iyOKs4y/rxe31KM7yN95zItPpNH
         N1pNo5iwwvXRJRHeKvTulQfoMNGwMikSQqldiW4Ib+yhGAuuTUmNVEONbzV+gIJx/7wN
         017JpcF636FEATiCOPlZp1UAYte1/GuZ0mMqV2faeiA04W+ujSJrUHzZxmThnUA/p3Rx
         HYK9HBGY1Oou3/zQzASe0KIrZA0vLrjpxY7Pzxc7aVA5Zb4yrdLRCxf7fAVOGvuR+4VV
         VTpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wQTkhzG4Z3ftiFnk875mbZJlHJFdBVQtmqgTQH+i/fA=;
        b=oVkYSe4Gw7JDu47C+ZamMUQVuIJfrU80CsQGdzyM36atotay1eYoZjdq8ApB8Lbfob
         gh59FpEpl5Ho70kgIlGpzngNAnja9xB8qbR5PQuWjZQ1ti3fB864ljhKxsj/+o6TsjNd
         SNZOE2KDgmsdsrl8KI8/z1UvKWWpNx+Rzu8K3po4pzIkTRIDxMbrt0VfF5fipvy03Js8
         MHyTNFM2p20CPWvlNZwANEk5VFEPe0xHAmQv4On8hkxd3WCjxeScc7hIBgWNdi3MLi+I
         9MhZLhn6MsR9TlsoLgtjAtuTT0zpQ39x90DNv/88Eg4EfXm9Zrurm4hmrqz1e4D63aT5
         iAlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wQTkhzG4Z3ftiFnk875mbZJlHJFdBVQtmqgTQH+i/fA=;
        b=pYZn0tAYgENh9StKAofVTgQ4uyWIlJyDRaGEk80vK6mJk9LXuFB3P19X675STuIuvE
         P8JOcNAUfW2V5ChbN4/7ohVkGXE9Rq60xwhAMI2wi51Btbd5a1KzIwVydj/69PcFeps6
         U25o7vmUBULcw2KG9ZTaoey5bk8PONaE0/TXVTaurBV6BZnF0hRN6yViH+xXHW+LT6zo
         KfkVLW3Z6KQzpDYHszOvv65FtbjzdkSaDIx5H31Q22qlWbnEAd3U9JI7VCgFeA4lmrfa
         RmFpC3uovKJhyBspJnwhMheJXgzrgDKoiCQYRAIcDnG5y1SA/mna/CXWvula64l18co5
         QLnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tZbrlSDBeBzSrzqoRn4SFrqDYOtvBbz+dnt2QWQVgK6fxE80o
	8aVsC5IDUIRxwmU6N3YfK5Q=
X-Google-Smtp-Source: ABdhPJymknbGc2qKXFURBILAjk/QHNdFXCTcpPdcjqG/SwpbJQueL2by2ITxfWXbZ30Nt0+AzAF+ng==
X-Received: by 2002:a17:902:b111:: with SMTP id q17mr29342974plr.245.1594433744831;
        Fri, 10 Jul 2020 19:15:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls4874565pjv.0.gmail; Fri, 10
 Jul 2020 19:15:44 -0700 (PDT)
X-Received: by 2002:a17:90a:d304:: with SMTP id p4mr8984692pju.153.1594433744415;
        Fri, 10 Jul 2020 19:15:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594433744; cv=none;
        d=google.com; s=arc-20160816;
        b=tnkbbn0VlHCKTRqmClDOJcbomMgwqexgyjIqLB33pN/gUXJGWbfm6bHjI0d2aBqDTU
         n4KTTscY4+oQcrALpVNQohaFbeytTt1civJzcJ+vQQYCMydhe6ETdmDStTg3jkMsXKpg
         liW7Bf1ePc7RCg5Yt5tzUQzl2+jDruHX9wlv8ijbbMS5JUe/+bcssocuKd2mMbYUpvF+
         OG31R17c97rJUaAy2cwhJ18WVSKMElZCNsTeLYHqKB9yJO+++HXKNuPujj1KJPv+4Nqe
         3/YOK4OBPMM4x0VWoYkZ4KfN9mzQXlqBkk324rBZTt0eMQsqqL10ebVX8jtsO7Z+t3CT
         kA4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sjujC8EH7ARbkTUTNO0AnrUD5+VGBwJEBYZspc6WjII=;
        b=U7Xg70/aIVFHu8RBJftW9JKM0neMgYRSnCPASD1hQWz/Hyc4zLeC/VhyoAWNjkmj/x
         I5mxpUzCxckFmrnMvTZWwjel1Exf7NINmCByZqfv60XaU8Y38g4EluI62XuZUnuX3uh6
         37GocQPX0ykpxSk9Uzt2jKdEcsn3nKGwLcWAONhOeEqSLC32zOU8/sI956h1SnhnzH7X
         Ir65KnUUPVwXMFtvdGtwknhETomkpwiz/7UVtOyFXAhmF+AO5wceUdFDPd+8aVnQ2qjJ
         yeicyKm6KAzGF6GAMuiatKiehhNDbxwmc+f6ulCp8vbzqJOt0CEiSRWxkYk4Shn4WAU1
         141g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ogPQ8EyR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id cp21si429727pjb.3.2020.07.10.19.15.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 19:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id v6so8036960iob.4
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 19:15:44 -0700 (PDT)
X-Received: by 2002:a6b:8f09:: with SMTP id r9mr49792526iod.168.1594433743667;
        Fri, 10 Jul 2020 19:15:43 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id s10sm4387816ilh.4.2020.07.10.19.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 19:15:43 -0700 (PDT)
Date: Fri, 10 Jul 2020 19:15:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Cesar Eduardo Barros <cesarb@cesarb.eti.br>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] mips: Remove compiler check in unroll macro
Message-ID: <20200711021540.GA4337@Ryzen-9-3900X.localdomain>
References: <20200709221102.323356-1-cesarb@cesarb.eti.br>
 <20200710223441.756320-1-natechancellor@gmail.com>
 <CAHk-=wjb_WVt2Dxe6GUVcMzgms1od7Qt83dOShQ1-ux+tp1RsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wjb_WVt2Dxe6GUVcMzgms1od7Qt83dOShQ1-ux+tp1RsA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ogPQ8EyR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jul 10, 2020 at 03:43:43PM -0700, Linus Torvalds wrote:
> On Fri, Jul 10, 2020 at 3:34 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang 8 was chosen as a minimum version for this check because there
> > were some improvements around __builtin_constant_p in that release. In
> > reality, MIPS was not even buildable until clang 9 so that check was not
> > technically necessary. Just remove all compiler checks and just assume
> > that we have a working compiler.
> 
> Thanks, that looks much nicer.
> 
> Applied.
> 
> I think we could probably remove the (unrelated) clang-8 check in the
> arm side too, but I guess I'll let arm/clang people worry about it.
> 
>             Linus

Yes, we probably should. I'll comment more on that in the other thread.

Thanks for picking up the patch quickly!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200711021540.GA4337%40Ryzen-9-3900X.localdomain.
