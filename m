Return-Path: <clang-built-linux+bncBDAKJG5F74LRBGF732AAMGQEP6BQSNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3773F30A1E9
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 07:28:42 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id c63sf7146332qkd.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 22:28:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612160921; cv=pass;
        d=google.com; s=arc-20160816;
        b=euIjPoedFdK6FUgYcpxUvzEVaCvunptJt75JwvJgNns0GVNGzD8YDnTCjn+7e+5H9q
         c1N5PbdKwKTyY4uwYMrdP8ZVPZoLRNMmdTlb0Hr82wBp3UldbDc9f3Q+GlBWy5Ow7+FR
         i8C5/M68TPLgNm8+qcdOKJN9/jEvtdrHzbfhs3znRbu1tg0+ouDzxEvXkRhVXv9bFYmG
         LRnt44y0E/5h9PNCIwu+pTV2L1IUjzd04R1HR5LCBeusqt/79lVaSLRv8g5HcK1JkQWy
         hyXxGINqHfh3UlMowDt2hWciN4q2LOwamZ2D+sNDpKQZhqoEIsh9ZqrtiiTvkYeF6/vj
         asyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wmdy8NoCsx9LF6CYPaaa93WqQhhxRubNaX8TvZpm1FU=;
        b=dPJGC6BRhmpY8anyo+u3LdLgzg9MUAU2wECQI6M5pRlkw4nYIfoz6meVzzjxZnGGSv
         s6CLuUKv0V/LwYmIcV37zmmBIzPin/6N/Q/7wDPm37jBoqsd9YelDwR82xhSfDz47Edk
         /tXSF9PIUGG2oleJolrwCecrySCmaDM004exnzWvO21WqhodgVdIrzdPuHkCw7A8vhQV
         w/1X7uHng8zlispRGevaJt+DYXhRdY5lCeo7Nja8oXvMOOO6xHYzLSk/x26ltNyw769m
         7hXt8PrAQxH56wyRNcl/ZJUoh2e762/QyjOkiEn2pGWNH65FMuTsldgxHUsyp5Or5LBQ
         XjqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpbU2CR1;
       spf=pass (google.com: domain of jassisinghbrar@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=jassisinghbrar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wmdy8NoCsx9LF6CYPaaa93WqQhhxRubNaX8TvZpm1FU=;
        b=RKu1V9jrNF2f46d23WQRtwt73HhtJ3SefGmu5pGJutUmv+MUJNalikAIHBbBH81qyA
         tS/5CCZRXF9rgIgw1UeWpRXhyBbrNSDMrfCrugHX/z/jo6gUVee5D31n+mu+L5GqyrBl
         yYDw0KJ+tNJRcmKVYW5W7ZAdLVREP6U9RP76mNX0lf8+y6QQWMxJ+weP+ULBedjv65Yj
         lTdwwOF3MKfW/DPz6Rr/i95io93wSMezllekA9Bw2ZLFT2XumHsYiN/4iIFXpc1UaAtr
         QM3h7EkmXDJjWsVCbL83kJ2DpggDY9tlGGzV5drAtxU4kfU7h6D/5+BGF2acCQ1YxftC
         w6JQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wmdy8NoCsx9LF6CYPaaa93WqQhhxRubNaX8TvZpm1FU=;
        b=a/ApaQYeohQeMDX3KK3ucG1vvniVCElQYPVZn5+gEIUR+1PxRC8Chnwoy46G8MxOhw
         r4/so+1xHZ3h9rJd0nODh0CsTo0WX5RCjlsmzkIlUYh8qNajgcJ9nz0iAASzprYyTRAU
         aEh8fL9cLD+wRWqGTpiK3ZBaCpd29PKGKWK7eS1k0jQy4hOzZFJRFvjGCeiCn+UGbKlo
         hVZB6IqKVmPwuHReTbOtnmpDPMtUqURxZK9eQVsVVszw7c31eUpmtYeeTdeUBwGEWoqz
         hDiK37ZuVTt+sAUmMkT5zrlaOHhKsdXAlNerDT8wbAus3ZUHJ8rArvFHER9/Inv7F68C
         FlgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wmdy8NoCsx9LF6CYPaaa93WqQhhxRubNaX8TvZpm1FU=;
        b=tGKCYQZ7vCgg2xvd4wMBusZ3M1leECZlTZisGfN1TQbr66CrJb/xhtFkEiPGomn14V
         TRJG3O7m/oSRTaV4tC1ncl7pfV65MvhYXO3lxLkhFCOUf7n0hwdL6d31yHeYgzoSPwUn
         u08yRCI6kOVDqiEExf2dq7H7UFzal84Yk3uXH1gpePWpscgnQi086xy1iWO0lhlohreO
         1Yqylut307Drnm8AIQzt9erl4PUiNNgQ82Y4TpqPAShvpBjBL2M2AgUuef2/HUPI4Aa6
         0+tIOELJdVRO3fIZfYnI1acoPutiZvyTEFR3n2qgcgztd+txTXtv4+JeEtROiEl2WBNp
         gOgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329lxG25bWT3QuRN0ezbmUsKbCKRsiCi9LDmQtftZQqjyngXXw/
	HhqneR5B2MfDCQoHr07KFQs=
X-Google-Smtp-Source: ABdhPJxotgQLlJMDgPCcKN9RMaspDLssQDWKgItCttyarCML2GU2sLr4HC3YldyV1wHw+KipYIV+JQ==
X-Received: by 2002:ac8:dc5:: with SMTP id t5mr14369843qti.246.1612160921043;
        Sun, 31 Jan 2021 22:28:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6fc6:: with SMTP id k189ls6199798qkc.1.gmail; Sun, 31
 Jan 2021 22:28:40 -0800 (PST)
X-Received: by 2002:a37:56c4:: with SMTP id k187mr15313262qkb.303.1612160920750;
        Sun, 31 Jan 2021 22:28:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612160920; cv=none;
        d=google.com; s=arc-20160816;
        b=daS3QWsY0niyOHCgl1bMckfb/3DI30vofOECZCst4MDxnv52Zv9tOPBFcjeWHJE+q1
         gIBBgVJ4SsutspEOnjT0rec5LGcCPTa0M1mTHvkALqFzwdzdSb+c/RKh3qBg5vHNzbi8
         5dNAvSaEcIsL7jnfDAu0qzooQBgBdsTPrELelZ8aaQP56rKnOF+eeD8+ItTjl0XgieBP
         1WgjltX0gzIU8xueQ+uD4Bn4ywJnLRAEkDHXM10sNynIPHtjqxy/dyAwZ8QOZzcx+biA
         9dZljvy9WRx7m6/HMH3DgiJqWjEcYV6Ud9VncUAlrU2eOsgukgAEz7/2ljkjmUgvfBT1
         GUnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jmzqwJKaMep+rAWHEkV3E0XHPW5uGVDn/m8Uq3t6K1s=;
        b=EvSOUejL4vFbxUYIK1T1m1LNkiRTO8XCZiQ9WTxGMC8qkQYMDzyS6WI2Ld5JvR21Gs
         Ca1uejmXXzg/SRH2RQsy3YUWu0RpQM3VhTllKLmuwpANixy7ELCC4+4jz+kOeaqntLZm
         Px+qivknFF965TkoMhq0B8aqR84LiAR/AtYTyismR92IVKRL7qoklHaajBt9uNUQlsBx
         VnhFL1xbdqMcL1NhQOdg/CX0DsWsrr3vO6xfR1LALFAJikeuoh/gl1XjcEkBCWU/NDyf
         k8/1Xr8H1b6TIBeUDrR+Vwod4yl60BSHivKe1K2do4qWIQWBCWvblgnwyfYlTEE5JC/g
         sPkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gpbU2CR1;
       spf=pass (google.com: domain of jassisinghbrar@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=jassisinghbrar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id q66si652971qkd.3.2021.01.31.22.28.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Jan 2021 22:28:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jassisinghbrar@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id v19so11370335pgj.12
        for <clang-built-linux@googlegroups.com>; Sun, 31 Jan 2021 22:28:40 -0800 (PST)
X-Received: by 2002:a62:f202:0:b029:1bc:a634:8e9c with SMTP id
 m2-20020a62f2020000b02901bca6348e9cmr15084868pfh.49.1612160919974; Sun, 31
 Jan 2021 22:28:39 -0800 (PST)
MIME-Version: 1.0
References: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com> <CA+kUaCeebDNXi12-nNpw4i_auZbM+JQUC5uNhEzXxqa7=W4LnQ@mail.gmail.com>
In-Reply-To: <CA+kUaCeebDNXi12-nNpw4i_auZbM+JQUC5uNhEzXxqa7=W4LnQ@mail.gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Mon, 1 Feb 2021 00:28:29 -0600
Message-ID: <CABb+yY3P_iFnKamY=7z5rnNW+BQW4-vAbeS=S33BpqCKR1Rhuw@mail.gmail.com>
Subject: Re: [PATCH] add chan->cl check in mbox_chan_received_data()
To: haidong yao <yaohaidong369@gmail.com>
Cc: natechancellor@gmail.com, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jassisinghbrar@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gpbU2CR1;       spf=pass
 (google.com: domain of jassisinghbrar@gmail.com designates
 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=jassisinghbrar@gmail.com;
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

On Thu, Jan 7, 2021 at 5:53 AM haidong yao <yaohaidong369@gmail.com> wrote:
>
> Hi Jassi Brar
>
> Thank you very much for your reply.
>
> Look at the function sprd_mbox_outbox_isr .
>
> Chan is !NULL.
>
> chan->cl is NULL when the client driver not loaded, the controller
> driver don't know the client driver loaded successfully, so, I do not
> use mbox_free_channel.
>
> Here,How do you know chan->cl is ok?
>
The channel is supposed to get/send data _only_ if it is being used by a client.
Which you can mark in .startup() and .shutdown().

Checking for chan->cl will make your symptoms disappear but that is
not the right fix for the issue.
The right fix is to EITHER not cause Rx/Tx interrupt on a channel not
being used, OR not send it to upper layers.

thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABb%2ByY3P_iFnKamY%3D7z5rnNW%2BBQW4-vAbeS%3DS33BpqCKR1Rhuw%40mail.gmail.com.
