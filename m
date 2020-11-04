Return-Path: <clang-built-linux+bncBDRZHGH43YJRBPWFRD6QKGQE2WUA4KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B9A2A5D2A
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 04:40:47 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id n126sf7030542vsn.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 19:40:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604461246; cv=pass;
        d=google.com; s=arc-20160816;
        b=nyX0wxcHjvwLrMTtUEoo9oiX6u8RJytjpuOH8cUviRZ9NApQGhNBaiVY2eoU2NzC/w
         QERpktHP16uvdZMXxasey+pUYGOaJ0sJo3y/sRZlwuqXRVNNLVLgOfPuir+1N+Hsk7f/
         n8lJ/97rJhbmO0xvzNFr960wnPYiuNRP39fd6Hddms/ZUV14cip544K3eIoz0u9RX3JD
         vbngd+h3JG3ZPhMmVZF+Vzp/sBzDRiheQM+LxwYdab6VujL20MjDZU13sJHc3ucvlezS
         zusH91h2g6WPsIIhYmwRRwhLM28eundW/+hI0oEszn2/1mnuBRArhSbBFX6JCSnr9JB8
         SnaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PYhnBgOlmEJX91zW0kI7gwCpiyApGVAoxBRF2JgjO5Q=;
        b=dPLtCNVbhnhnnB/8AyURBSvh2MNTjZJOx/VeRiw3kfY7v7seXgwpYGpRro49gOh1/J
         3wWt1dkReKE7rBpMPqSvRbtpDFMeyMW4eHO6lg2i71cjFc99TupC5SWqteBvby+g6vTt
         5TbZEu9wfPsmElc+IiXxAxYgn5dv1ligeLuwGU7De/ko7UVKQr1kZFebmA7G/kF78I1Z
         vOYObNlfQwSAvOXLyWUMQinnwGc9slh8l7iYZevJ/in95dLrFa3gz6Nq2I2znF3G8HON
         /NA2IAv+89lXvMjhzR/KrPEI/F1CtS+6sFbgfOsGAH4FwDVzqS/wIJOyGjSHXAW7fnCx
         wOQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ibjhcSts;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYhnBgOlmEJX91zW0kI7gwCpiyApGVAoxBRF2JgjO5Q=;
        b=YV++sXRoOjzyWEfG4OpOrD573ZiaucpzzoN9ZqVSBV7nW6j2RVKpbKPmVhHM69WvZS
         nZ6ndGCWSnCfwvYZuVRKPyzeEgFDs/0AXBympy/FAwDjinHylNQdsK1uxIMZGA6WgAJa
         OIKxOkQkZDEUCybhaZP6FIZg5ajClezz0J5glzjnJ8MRwf7sF1joquXo6P1VxUilcbC3
         ozPQQqDu+/tTXGiFc2YF5F+gNf6AQ7Ko4etFN+iZGCU+Qcb/2nxE00i4qGDubqWiBuDr
         5EDJ8Amm5zvlnSFNwcFYe+vnVo+kp5CySAcg3NoZ5M9AWMirGn+30uGG/tQtsFmfSMjm
         Z12w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYhnBgOlmEJX91zW0kI7gwCpiyApGVAoxBRF2JgjO5Q=;
        b=S3tQwq44bhQYpnMHYjPDdjFyjhLGAYCgSj0LB7nKZ5Q5G5IHBU8cc7r7WAZMZ/BCkn
         BH6cfm71kRG2ynqUW7ND3W4zRIgmKOT6d8xrnJYkOV1RnjatNVhQgWdH2Zr9xc+yvD7j
         8eYBPOKi4Hm3CPHgM9ACQokqclB4JeeotZ+1CVbO4q/fkLD1MqalKsweYdoGIUF8zBPG
         pwCqXVrTTAif0wBs28OsHFISGJfaRPJ2cYIhnzN+9206sn9AeHnVwZxWIHfW8J6g29yp
         3U5G1dBhiu1WgFFpkmDsCXIdybjEzOo2TD2OhLjEyvPgtDs/40f6ghvw3X/y9U2BkteR
         ysZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PYhnBgOlmEJX91zW0kI7gwCpiyApGVAoxBRF2JgjO5Q=;
        b=kTSiQETjg/JID4gf6n4xFVT5SXS1VBHG4eZsIC4yfaNZs335cFMrDXAwZZw4T7QjJg
         91rKouPqUphUcOykrm1rZycSg9wJYNUV2RHfY3kAnTd60hwJahZVZlyeWPTudsYIz2VL
         j78b5HxzadVRkEErkUbeFbnWMrGFFJoZ7MzqMFxXWSzL5NNY9iqALdCp6J9y84OcrW06
         cclLsNxadVBhfc1g+fdDYzDufU1gV/55r9vbMIq4LbNnIC9kopvfG0Hh30qWhgQRsQF7
         gc8/Vu5w58TvMnJqBb4WKjeGki9+b8mTZhTAKKe2lnieHfFsgraEkj3dR2vbn3LUSPaj
         EfdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NHS/BV7YkTZVVDf4mpdzJPULlupaABTtOR6BLLCjeJvieMC00
	Uvd8D6qLCfNTdJel35PROVY=
X-Google-Smtp-Source: ABdhPJzvmRe9KbWvsy7k8JTFPf1cLSoj5ak+xI7HdxwHgIoYwSKNvlqHe/xQ8EGAnUOCu33Tc16gBA==
X-Received: by 2002:a67:f54b:: with SMTP id z11mr10759260vsn.17.1604461246327;
        Tue, 03 Nov 2020 19:40:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:23c7:: with SMTP id 65ls47407uao.7.gmail; Tue, 03 Nov
 2020 19:40:45 -0800 (PST)
X-Received: by 2002:a9f:24eb:: with SMTP id 98mr8940148uar.90.1604461245818;
        Tue, 03 Nov 2020 19:40:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604461245; cv=none;
        d=google.com; s=arc-20160816;
        b=JyF5+Mm8mNINEB4R1spAhaBfRbmkj7Jqa0p1IPmZNs2yMwARjI5hKCZ8C3U2BkkeMi
         lHf5LU74z+hMcMQlskmGtnDFMQSczIg6f+LRHEkY6XvntpNZ+InY9HU/djpg5Vl7m2VL
         dd3+V00h8DBGql+PVXF12n0eY8IsdmyOj5G+kp5fH+n6YFZEAfhQJDp6IkovwrzRTfHV
         pFJy0x+IBGkx2KZYuTr8MofsmWsgukZ+RFdJwDKJsKXFYfkVpQY3O4H5mE2fPrtjiOBh
         UJpCCYv//7t+ugx8XEvmrPsKAVnxpEjWshWZSrnMvdcv6loqKE0uhtJnheCF3GhynkfO
         OtTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CutPkBCw+7uDJA6QpNjo52YVpMUSo0YRNrxUbCrl+F4=;
        b=Y6gHMGS6MnwxFyQPZ8BmE0c+6RJLL5Cm7qjt6O6PgmCk2n69SZ3fxeSPRYiLdoGeN9
         VTfgFw1TPiyVmjS38vM3gf5B2LUnUCUlHTy3AY0alTFeAWIjgErPmp4nsESk9SOZbuY6
         aI2wUfzhqcCBbavdk/Nf+vdu8rBsEOdR04079Ry+vhytzq+f+0d8oEBqkaF9aS7B5+G0
         aqYcDuAiC/ZlCeYq8/su0I90skmEBhfAfffKQ+G4a9Asa7qAJWxBhm+do7TTYsbPTTeV
         pFJgTYidssVYZOyG/iHlxuTFafGQX6gzFvQ9+ur0EpfVXLlG2sRk23BhEcwH5KSwtrE3
         zGrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ibjhcSts;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id s4si91330vsm.1.2020.11.03.19.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 19:40:45 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id f140so16842785ybg.3
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 19:40:45 -0800 (PST)
X-Received: by 2002:a25:491:: with SMTP id 139mr34527341ybe.22.1604461245526;
 Tue, 03 Nov 2020 19:40:45 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com> <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
In-Reply-To: <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 4 Nov 2020 04:40:34 +0100
Message-ID: <CANiq72n0FFfH6Uag5yai=tSzzOgVSLpzu5gyUr40d6Gb8GzZpA@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ibjhcSts;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Nov 4, 2020 at 2:08 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Miguel,
> Really? :P I'd bet if you picked up this patch no one would notice.
>
> I recommend a simpler approach to multiple version support, which is
> just matching the one version recommended for the rest of LLVM tools.
> Sure, technically you can use older tools, but do so at your own peril
> and don't complain to us if it doesn't work.  Otherwise trying to

Originally, the .clang-format file was made to work with old versions
in order to make it easy for people to use (just install it from your
distro etc.). One of the reasons for that was to help adoption, as
well as because clang-format gives a hard error on encountering an
unknown option :-(

I am not opposed to changing those requirements now and say it is part
of the LLVM toolchain (even if it is independent from building), but
somebody might be annoyed.

> explain different versions and even for different directories gets way
> too complex for anyone to take seriously.

That is just an escape hatch for developers that really need the
latest formatting options (e.g. to minimize the exceptions in fully
formatted files) or temporarily deal with some bits of kernel code
with a different style.

I definitely wouldn't want people adding their own .clang-format files
without good reason...

> It's not like we backport raising the minimum version.

That is a good point. In fact, we can just do it very early in the
cycle and wait to see who complains. If there are too many complaints,
we can always revert it.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n0FFfH6Uag5yai%3DtSzzOgVSLpzu5gyUr40d6Gb8GzZpA%40mail.gmail.com.
