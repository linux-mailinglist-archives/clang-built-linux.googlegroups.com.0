Return-Path: <clang-built-linux+bncBCS55RMW7MORBPPPQ3XAKGQEIRQDHPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C6449F0487
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 18:56:14 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id a186sf19735209qkb.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 09:56:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572976573; cv=pass;
        d=google.com; s=arc-20160816;
        b=yumQ1H4o9/e9Ds4N2mBkZ+oEleYjNf9IsKFmwhIz5fdrv+RyV/nOmYd1qHd+B6YKsj
         tnwghIwFCggXFihiscm53CbwTq7vvxEfQNuVPHwmE5web0ddFoevff8CSL3jpr8D57Mb
         ncHiQSiokvELNUWmwrBxZbRDjntm6ew1Emszj3ZR227re/c3DlH+cP4Cvr/G/OQGvv/L
         tJioBJbFQLhpX/+El4QTfIBPg0sbxH0o3g31/19gJ6nlyhsIEgxktuMrVL1mTcEGmAr7
         2XZPN8blzsdckzNiAmctTGUX6pSQqUrUDxlHMkpeWLmWs2UPzOSKdMgpZr5DjAJHm4D2
         7/oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=P/HtHqZo3xZhWOowhbhnunHbAF/vHb4wHt/jkzkHiz4=;
        b=r1BixcETwoHRAuo/XPgmRGkSUzQlVilojswmJcrkZKG78RqpnL/Cuof8mCtado5Jho
         wSL2/pGyW316yN/EC90MQoxhkPIs6RGFIJsWKA5S1KlKox5H1EN9vGd5fBvAZekF6fwK
         s0xXKAElRQKkJc+BIBfP5wZ9yZmaRLZ5YAUXYBVVtKUb++Ske6BtSDDLknCr/slPwSS/
         un33YYAbb0fEBxFZGYP85i2mz35ofrYyDBRTJTBGvjNG5/FMWs3EubNNQBe1rh56LKtM
         oVNWBWP8tkoYryVRQg8ERpQFd7deGSNsWguOoZI6SO0koajOetfyle4NwN0rb5rvrUw2
         VAgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zKXifSph;
       spf=pass (google.com: domain of peter.smith@linaro.org designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=peter.smith@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P/HtHqZo3xZhWOowhbhnunHbAF/vHb4wHt/jkzkHiz4=;
        b=EwG0eqTp28JmehfT3bg996eyydqX2GPN7UbL+o4Y/iXG+t4SQItmKPJHq8VYNexIeP
         5qIbWCIrvUhglQ5ogHK29/7fI7uVAzhfNDvX1TFpoBkkcqhXdypTfdju7Aw/jjQbnjqR
         RZ7ETh/tQXFQETi/v/ocg+O/H7NzU6o9fGhxMQnLOGf9a+DqKPW8tMOGFHT9wKMToHzk
         qe4AZ8Gcx5D8zt/3L0x7Yx59a/8bJRs3BSqPX5U5ErVXxHG9Xq4GVG1UVcS2JUMkcRRb
         cXXWAvSb/Q4Kjio2lZdItOB1PX2qLi0T5GPz7oLtKND7D9cNMC+qs0qQdqJS4y80b9tt
         wHlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P/HtHqZo3xZhWOowhbhnunHbAF/vHb4wHt/jkzkHiz4=;
        b=p2A1X/Nh/4mRXMcXJCX+5F14whTTHJmTlKV5JvTmTGuxMbqNQLTZACkwvNzNdLqEGq
         W+UbxvIc3RyGsZHrcq5OGMjK220vVYAqbIzH3bJzZdtCM7khqhmlx2FA6MuVHqsR9WSf
         s6lX0nx4AOW7+ZxWWaR5dYlRnGxQZky/cA5u3F4GCBx5WzE+rTlsNNzkCbjG82Ov8Vr2
         qN9vB1n7eVgnvRyyV+ngPho0BeI3WE1awHMaZQxy1f5EKpsnmnA8UQSYx6CGc5enIzwT
         23mbNlPAJlwSIwiRj1PR7kZCy+HW6fP3YilcD9fQuyK6TujiptAIBiLvy3OEmoGMNK3j
         6BOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0rKxdl6UX5gaH5tJz6qXGu48DnooHIB5rbjbqeG++ioJtp/BX
	XTCIl8WUGkZPnRSPJTXIwCY=
X-Google-Smtp-Source: APXvYqwRaz/qvfDCy+HtT8hT/0DEafd1WFxNaN7C3yBs33LAaXarYGB7zFJkjTGW8ZWzD68ZCI3Qag==
X-Received: by 2002:ac8:109:: with SMTP id e9mr19188012qtg.233.1572976573740;
        Tue, 05 Nov 2019 09:56:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22e1:: with SMTP id g30ls2468028qta.0.gmail; Tue, 05 Nov
 2019 09:56:13 -0800 (PST)
X-Received: by 2002:ac8:664c:: with SMTP id j12mr10418893qtp.350.1572976573286;
        Tue, 05 Nov 2019 09:56:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572976573; cv=none;
        d=google.com; s=arc-20160816;
        b=MfMqpFKwxzXvnRizfZeHBg7z0fPBUH8tFCCngm4Qyg/rOHLJNXn10B/5qzy7FSR+85
         w4jzXT5O/ZHETS0gjJGGiSMpUrYEwwn/gk2njI+cBeBh+HWx/QfpOB2x3huTKCP++YLI
         DTlSqOLwDdVQCnvk8zJ14E1SMfhb0x4fo0L9BPBtBvlaQGPval8B4YVzTAJ0WlcZeCGD
         lJHZny/3XqnVd3hNVQXxidoiNUPBp8OjIw4r6iLuU0AOO1dOzzvl8tpRecBo+lulELe7
         h5X6gj8IFCI1i2LEF2hS0WT/8FBtdv/+LBcqwYewRNk8/K21OoeDA4ROaal/PrLlr775
         s60w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sbx8o/ixGs0W0sPX9hSZ8ivYPpC068W208P9pEVMhCo=;
        b=YtwdoV6w3h5qjwsFvTCXV+IX9hOW2Q7IQk4oFK2XevZaFM2bLyaYp4KWVFnxExoMJe
         PFWT92P7oEhQ5u6yecZC0abjORNYq7e/QQK5FixoY1yPv3Blc2qh5GYUIqFY/PIN26Os
         Rz+4eGPNByE+fcTBcP6LAgwd6aPhNjMjDzmZouAurnASwRx7FMv+SEJthnDBRqbv8qhx
         5QKNpMY+ZvRiywVb6GTRqsRkuH3Q/dm6EZ9Z4Gyqsi0BlifGrRKO3dBzf7w2TnvX5TS3
         VS0WYDwXbCG7DEOmIhcVm8Lbyh4lr4+ZW9PoWcJxAljELcmGP/eph+l5c+jHiolPhfb2
         u+EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zKXifSph;
       spf=pass (google.com: domain of peter.smith@linaro.org designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=peter.smith@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id y41si1416353qtb.5.2019.11.05.09.56.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 09:56:13 -0800 (PST)
Received-SPF: pass (google.com: domain of peter.smith@linaro.org designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Received: by mail-ot1-x32b.google.com with SMTP id b16so18399395otk.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 09:56:13 -0800 (PST)
X-Received: by 2002:a9d:4801:: with SMTP id c1mr1178589otf.32.1572976572476;
 Tue, 05 Nov 2019 09:56:12 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
 <CAKwvOdkUdYXTiQQqYohQ+kZN4BQ4DFexDRqO-8SpOkkNkfXeOg@mail.gmail.com>
In-Reply-To: <CAKwvOdkUdYXTiQQqYohQ+kZN4BQ4DFexDRqO-8SpOkkNkfXeOg@mail.gmail.com>
From: Peter Smith <peter.smith@linaro.org>
Date: Tue, 5 Nov 2019 17:56:01 +0000
Message-ID: <CAEt-8LB0Kq9XAXVa4B5vRx4_fxet9TPmqCA5GEDt4Hv3qcO5Hg@mail.gmail.com>
Subject: Re: [Meet-Up] Call For Presentations
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Behan Webster <behanw@converseincode.com>, Behan Webster <behanw@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Dmitry Golovin <dima@golovin.in>, 
	Masahiro Yamada <masahiroy@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Stefan Agner <stefan@agner.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: peter.smith@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zKXifSph;       spf=pass
 (google.com: domain of peter.smith@linaro.org designates 2607:f8b0:4864:20::32b
 as permitted sender) smtp.mailfrom=peter.smith@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 4 Nov 2019 at 21:19, Nick Desaulniers <ndesaulniers@google.com> wro=
te:
>
> + more folks, explicitly
>
> On Mon, Nov 4, 2019 at 1:06 PM Bill Wendling <morbo@google.com> wrote:
> >
> > The Official Clang-Built Linux Meet-Up Call For Presentations Announcem=
ent
> >
> > Now that we have a date for the meet-up and people are starting to sign=
 up, we need content. :-) We are looking for presentations you think would =
be interesting to people. Your presentation could be an hour or half hour, =
though I wouldn't focus too much on the time aspect.
>
> Hi Bill, if time permits, I'd like to do the following talks:
> 1. welcome/intro/background/history on the project
> 2. LLVM: how do I debug this shit?
>

I'd be happy to a presentation on LLD, or Linaro TCWG's regression
detection job for certain configurations of the Linux Kernel. I'm open
to suggestions for LLD. Possible thoughts include:
- User visible differences between LLD and GNU ld, in particular linker scr=
ipts.
- A guide to LLD's implementation for the curious - how to diagnose
problems and make your own changes.

Peter

> >
> > If you have a presentation please contact me and Nick to let us know.
> >
> > Some people have already mentioned presentations they would like to giv=
e. If you did, please let us know again just to verify.
> >
> > Share and enjoy!
> > -bw
>
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEt-8LB0Kq9XAXVa4B5vRx4_fxet9TPmqCA5GEDt4Hv3qcO5Hg%40mai=
l.gmail.com.
