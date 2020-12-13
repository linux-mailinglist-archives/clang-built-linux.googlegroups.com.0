Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBYXA3D7AKGQECJPXXJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EE92D8E36
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 16:16:51 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id e18sf3461969vsh.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 07:16:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607872610; cv=pass;
        d=google.com; s=arc-20160816;
        b=RO4MtroAXr8sI65clwuwMGawVC22iQzkDXUe4r144eVA4rxorDivkGx4nS1+z1ib2/
         KVmJ34a6TdzJk0elLhHfZxqmKSWgywm1h5uRgvm+qzIiHRU8a1QYyte8Y8CqFX+PX835
         uPeM1aGjGLx6EV5vJytqN8Wu/vi9KwLCVhxPZr9bFSbZQb49WLd/R6J5mpuXbuINbogv
         MHJfPbxvesofOwY87gPZZ3XFtD+tXLlJMw6twPJ6+u+BW6WKPlG2WtKqdU+KEhBSoIjd
         7HV2LREKrWGFkqdKsA/94BN8mOo8hvJ7RWwhhHPIPJER1Vf1AXvOBckbuKwzgGRUdTv0
         KMYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HbxH2Wd9Pm5LaUZFMlMMkz6jDJPzvyQJFVMDapyQFis=;
        b=0HR9l7bG5QdBSk+oeWPx+dhqSddBp9CHc3eWD5zcJ+CJS/EHcsz4mqDR7+usdwt/iG
         r1+IqfCdijGhR9HpSJIA1bpF0aIkihTV/qk2lYyzeyDPxj7OhSx6vn+m4SXik1w9HY1X
         fMitOhyK57jLzs+MTnU5tcYiU3Okp3SCakeTit2314fRXd0yh3zHZYuoQV0NlqweW788
         f4FcElIcopsG4ticUo/xhb2/fSXboTwzORtvdz75WSczy7XIMRma9Oo9AdDmYJXW4i8C
         Eg2PtjYFYpLvr3kcaqPYBCXMQake/qc/M1gTp3sD0GXy1swHre1byfJNjQbT7mGiTx5A
         JOZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=papV6FLD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HbxH2Wd9Pm5LaUZFMlMMkz6jDJPzvyQJFVMDapyQFis=;
        b=ft94V/5H445uuWJRl/kjsYPMicV2daPa8kEhIKRRhmBRAoDGsmS/qHIslL8pwnCDI7
         /qpbjrOhJOD+6KW3mDie1cn57c0hpNdsMF6BO0r5pZlQAjWwbi9y9U4pTL0fgyqA7g3z
         q34ewRfgF11TIpgfBYCcG2k5zAxuH9wqBy6n6dmKijN5qhUXXIpXXzUMdy2y+7dWP2Ss
         O5uBmognooFgRvWrCHoFdIbY5FXmgcg+SRXrEpMjxaJ5tiwu6Y7UlrNmfylb2p3DPJtF
         p8a0dioiTJOj7IZO/g+r8wnsTFfLZ1BAHZqFZIse7ec4xyQovZGWx8XPreXkZdgcUkT4
         6S3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HbxH2Wd9Pm5LaUZFMlMMkz6jDJPzvyQJFVMDapyQFis=;
        b=jZH6+cKPjdzTcA7euw1vn/W40p7oV3SB2JlXlgeX7OU49W8g1x/6HqPI9r0suMCIrL
         faVVOoQxImsWceYWNJ4Vw4+pxU6lUCpJUOVT/6o3tbBu1/Cbx0gW8JfhsKpXodwVPdjE
         i4NgscO+BJ1kkKUzCH16NvLPEMkzXPWrfd1drVzRdaoLpPdXYTqDZoMrirQq5Sfy8uNz
         FASQTZsdhtxG/i/7DtK4CQsPGiGsj3/48/SGYB9Cvhkdtug4bRdFFrT/1NcN1uU06FtX
         ZQwO62A/ll2fC/VopELSSiu9toPksZXprUZYGS3P14ke2AQiWqR0billAyg+dX8uFkwt
         YGwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317idRi5IgfqOBzsE5oxsyLrBXOZbZdu3ceV8ACerw133UU4Erj
	V60ZJnELfN0rqZRKBsTYfL4=
X-Google-Smtp-Source: ABdhPJxdqJrEALCP3hvVo9axv71J4Bnx0WO8eIqCDaYsyWA2A6zOL9rBZskB/knLtzbJnnlKQ4So0w==
X-Received: by 2002:a05:6102:a07:: with SMTP id t7mr18989155vsa.30.1607872610433;
        Sun, 13 Dec 2020 07:16:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc4d:: with SMTP id p13ls1693853vsq.7.gmail; Sun, 13 Dec
 2020 07:16:50 -0800 (PST)
X-Received: by 2002:a67:3212:: with SMTP id y18mr19451046vsy.5.1607872609978;
        Sun, 13 Dec 2020 07:16:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607872609; cv=none;
        d=google.com; s=arc-20160816;
        b=Mk+BwIFKa+EWJ7thJLNlE2DBYQpkb36r9uYUZNRv/bDMGJMB8ZLJ2xBjGM1rAg4WUY
         XOJRyyFdsC7neK6wm+PEvAvBnW5RcrwfnzbmhzXMBxutyuPpXqpzPWB6JKhP+6MovB9Z
         9kTCpaGl0ym/XrKYqQA4WFVP3vaErAIQ3PAA0cfV9OgFM/gAgGXRqB3GFUJ2W/83pXzO
         +FS5PlApuqaqEjDE3ap5b68d9M405PXew1R8NER2EJUDY8v4d0JJqisqHE6MQMeDiCSx
         7b+tjDFsHqvcPkkpIHAIUB2QxpBCMgtPRtW77BTA2ZG1j1UmIRdJ5MgHCvKlsX7X2wOo
         rLcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date;
        bh=8qesSYiVeuE1HiqO6CaKLIvS4GplC4Xm86J7vWyoTRA=;
        b=umuJdC9+EY1qv+vMt2SRgBGm2W1ZzQtCHuvDZIxUDmlD+lDYyZqMhhZeSrQcV4ZWwY
         pzaE/zAMAspySJg2jSGCLunxSiZbD4OhIFsITJANsa+Ukowg681sI3XMCDgkxUHk02A6
         8e1ywKe6ragOZSc4mwGG/134Y/Y3d0711PjrWaGuzeqsG7eMV1AxwfaWnHPITq5IG67k
         8exwWNvpE2PsPVq+cWcewIkFI4qbKTSpQ/DOS+zlD/DV4kdi44FMzu+4a9TerVE/ozog
         PJqHQBgR9VFB59HZ9OCRLZHEMtbX2gN3yC9vUt/yEDaQ5/yGUrYb0wLWPg8m9XPHd7pT
         cxgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=papV6FLD;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r207si875214vkf.2.2020.12.13.07.16.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 07:16:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Sun, 13 Dec 2020 16:16:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	"Jason A . Donenfeld" <Jason@zx2c4.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Shuah Khan <shuah@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	wireguard@lists.zx2c4.com
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
Message-ID: <X9YwXZvjSWANm4wR@kroah.com>
References: <20201128193335.219395-1-masahiroy@kernel.org>
 <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net>
 <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=papV6FLD;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sun, Dec 13, 2020 at 03:58:20PM +0100, Miguel Ojeda wrote:
> > The key here is "if nobody complains". I would argue that it is _your_
> > responsibility to do those builds, and not the reponsibility of others
> > to do it for you.
> 
> Testing allmodconfig for a popular architecture, agreed, it is due
> diligence to avoid messing -next that day.
> 
> Testing a matrix of configs * arches * gcc/clang * compiler versions?
> No, sorry, that is what CI/-next/-rcs are for and that is where the
> "if nobody complains" comes from.
> 
> If you think building a set of code for a given arch/config/etc. is
> particularly important, then it is _your_ responsibility to build it
> once in a while in -next (as you have done). If it is not that
> important, somebody will speak up in one -rc. If not, is anyone
> actually building that code at all?
> 
> Otherwise, changing core/shared code would be impossible. Please don't
> blame the author for making a sensible change that will improve code
> quality for everyone.
> 
> > But, sure, your call. Please feel free to ignore my report.
> 
> I'm not ignoring the report, quite the opposite. I am trying to
> understand why you think reverting is needed for something that has
> been more than a week in -next without any major breakage and still
> has a long road to v5.11.

Because if you get a report of something breaking for your change, you
need to work to resolve it, not argue about it.  Otherwise it needs to
be dropped/reverted.

Please fix.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X9YwXZvjSWANm4wR%40kroah.com.
