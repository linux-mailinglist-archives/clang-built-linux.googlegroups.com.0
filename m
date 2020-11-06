Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBFOMST6QKGQEXKZQ2WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EED52A9460
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 11:31:50 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id n207sf352883lfa.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 02:31:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604658710; cv=pass;
        d=google.com; s=arc-20160816;
        b=sC5lbQeR29sX3vmVrUQCZt61aTEXv8OBCx0gSTOF1RQVKu9PoV8AmqIaCZ4aHekZQt
         qWFTA+5gcIVUrhFyI8b6elyvj4GY9gdVpbTFDCvHr2HTgukmEGrYjwGpyYyRFU6yN1rz
         hskNYOQNPjhEz3+YfxovrcsFPI/zhwZ0kAWOF/ATCBRB1Pi0ojrrqotV3ooXzhc2P6Bw
         JYjl6SlEuwGrquEI6fGlDXUf5heWodb47y11lX865zNrSGWOH/8x9whFBcUN2/YADNqe
         EoxZsX76N4LUGZi8AXG4BjtcJmOJ32Qg5lencCP5f8mpKgEidaZK3+YDaXe4hAo9f21t
         a/OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=XxLz8TpgH/84tAPadEfrE0JNhPlc6ZSTTItI6WQAbAY=;
        b=QHVmOc8m9q/r/4oG/zw4KCfGfEh9C1ChNcJkTnVEEDU1uXocSvaOrk+gb6KKmbfLl3
         PfjVGE3Dey9GnL9t7O8vCZjpiDjsUHaUzVn4O4u7aEZp/mbkJhz4+ocVmY569E8MvY3m
         OinfqQ3baQrnGkQsD5C4/8ea5+o42RFxRe/56rRmrIi/gFvhSGemnOIUkS+3WOIcmduz
         km57oYUbj0eC/KlGWK6gJSJD/nZFf9mjXtnOYW2WukJcWgxfwHa2j/KWEpYjL8Casv6F
         ZPltLed66IrZIv2nYWE7ov6jhDyNrS5mbkwrCzhzeHQ/NlpBkbwlTqJR9wnS72kUNEu6
         SAIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lHdUzkWW;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XxLz8TpgH/84tAPadEfrE0JNhPlc6ZSTTItI6WQAbAY=;
        b=kk8ttotBoo7uHi7qTpODXQT3jYNAX84kS0w2NH7qoOn7/Vhtklah4Q2ooXssENBaut
         +cGisBXK1osJsb0GpYN6cZdDxEQJApokEWBeAZT9zFP/Si2Rwa6ptjtI7R24bTceVrgO
         P5Ouf66ayIvkkiGFnaF+9+RPJhCE5yjJrMLYr7q0IiBybaJendENgJe2dLGUlyYy21kZ
         paJJlwkZQm9/vf9fX/w5R7Meoi8tpKUiVOeqNTjA6ZgXQ+aoOIMXu+tR36H785Yqr9g+
         ezI3KxqHkHEFo8eZMPMP35IGAebKLqJRdwluxkRQ/B+nOcGiaFMOcVn0sz/L7I3yg1Ot
         nZog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XxLz8TpgH/84tAPadEfrE0JNhPlc6ZSTTItI6WQAbAY=;
        b=R12c1hOfpA34EhRpuYDrV0gEVlKljqrZjfaDX+cwd95B1LyYRmzY45MZMS0hjtEMDY
         9AMKsqHEZTiu8gi1G4vCT8b3aJ4WWlYqKl1dI6Su8tWL+lYPpsvZaBKbOWMLOQ6Cku5r
         UEhQkT0p8asdffDippHvpVwNiUyFbycyIbRz/pDFVNrT5sEsbeu+iO/ZDB8qxavVFtDC
         zz1es51WlEN3uil/V8iLcpsmMOEH10WfIbgEUjeg+89JGuQsRr7mbEtmZrEZx4le2Q1C
         cUCxCdhmK2MtN/GTC010pDLinJMgwpDV9amfJhLeEf6IA/ogLfIywpnE2kPNAPYb38J4
         0dQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XxLz8TpgH/84tAPadEfrE0JNhPlc6ZSTTItI6WQAbAY=;
        b=Loh3YoKS2rqWlX8JSakQKoFiFKncIdEpx4fGKn3dcJnV1X3P1+SWGkBF7KSPzs5tvG
         9kGF7/i3ZTPzIr4xvGeHaYLyhFv+IqEocKIFYoiscrHJ2Q3+oGIU2Z1Q8gSznpszome7
         cFJ4q8uYd8e2GlB49GUIYGG121HIYQAC9Eo++GJ4Q9bmGowX9zWlMWWHDw1tgRizpdHv
         D78cyJdo8WCc6f8+K0YFFVq4Q0pejNcuQssC3c+pNVC6Pt74koiWxYfuvqf+DQhedCH1
         n9psmIKZIu9HRF7E6HZXH5hc1RFPhB4ZsKK+IjJfJnoBwDxa76hAHbYzJR+asxyvhCOt
         ipAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YvQXDKNNs6P4VXsW4Ym3grEI4DXFePJ3LMzvVxMONk1s2nwYa
	q4/YPykNnRaSfG02LAKLCRU=
X-Google-Smtp-Source: ABdhPJxuCyqfCZfN3io1Q6CrycUfcrGwIOFDx7TXBauMUvPAcWdozEXSpo4TzKXQvk5Q4pvvu0q9fQ==
X-Received: by 2002:a2e:8216:: with SMTP id w22mr472679ljg.358.1604658710167;
        Fri, 06 Nov 2020 02:31:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9f48:: with SMTP id v8ls162461ljk.9.gmail; Fri, 06 Nov
 2020 02:31:49 -0800 (PST)
X-Received: by 2002:a2e:9191:: with SMTP id f17mr524603ljg.234.1604658709028;
        Fri, 06 Nov 2020 02:31:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604658709; cv=none;
        d=google.com; s=arc-20160816;
        b=rhGXN/0xREliLaSKSU+7UuyVrktDxYoLqQHwbUGKK7Xs9b9Cio7NxP7dC459KbXCJv
         v5ALOCXmBYtCBKhCjaGBZzg7D9qvgxhwsPK6eQ4SW37J9gJ5J+VrA++mQOuOD8Zp2RF6
         7v+iLMLh5Oh7u+JcU6P/61P7OUYpcPKTeGqnTKVz7BWdbaHTljsYCvToGADAnVcNOnwd
         33cDyA9HZQW9f9ohSJw40SoNLMqgh+aPzRdENlGb9GTxxQEhEoveGXjLwbTCHPsOB5xL
         Q+OD6WGLRWTt4evdOs3o2pAIcYIQdrMbSnFAOybDjskfnzG+CMuDu/U+tQyfI0prAEo7
         8UEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=8N2IRuQnolyQXy5yxaGIniNO8dc/B+5yGSA8aD4EoDE=;
        b=kD9DfEjW6qnJbjP1OycHWoYZuTKEIKG8H0joh9h2oQLHkcZv12zfe4IwLoW7xlJHtF
         CAOyJXgiVGdFP/Xb0oaAzPPEe1oyvI/xFrjCNerUeSth7zMlgqZYF6qwulezPJhPwZMw
         tMGMzFz83CXUT1DRb2wRUbJW1GAwZr2koJUUYgIbmv/B3IXyCZpeJ0F712LXQf4eRUnK
         QElAXhwKO0wHS1LmKz2/yjJULaU5MazK5WRQQ6l/8ofMGkFx1zFTgvnddzMMQsObFzvh
         WbcM83DKs0KrtLNR7jRQkRFb0aAhFXRbkpCrptQ+9zMHgAMQ4kwR0GEiP4RUWDEI0nwM
         Mq1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lHdUzkWW;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h4si20881ljl.1.2020.11.06.02.31.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 02:31:49 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id cq7so538904edb.4
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 02:31:49 -0800 (PST)
X-Received: by 2002:aa7:cac2:: with SMTP id l2mr1277712edt.141.1604658708559;
        Fri, 06 Nov 2020 02:31:48 -0800 (PST)
Received: from felia ([2001:16b8:2d20:9d00:e580:adb5:1ef:950d])
        by smtp.gmail.com with ESMTPSA id h4sm696552edj.1.2020.11.06.02.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 02:31:47 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 6 Nov 2020 11:31:46 +0100 (CET)
X-X-Sender: lukas@felia
To: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [linux-safety] [PATCH] taskstats: remove unneeded dead
 assignment
In-Reply-To: <6ab2415b-0642-16ee-4be0-c909e07e7565@codethink.co.uk>
Message-ID: <alpine.DEB.2.21.2011061126130.20338@felia>
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com> <6ab2415b-0642-16ee-4be0-c909e07e7565@codethink.co.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lHdUzkWW;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::541
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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



On Fri, 6 Nov 2020, Sudip Mukherjee wrote:

> Hi Lukas,
> 
> On 06/11/2020 06:22, Lukas Bulwahn wrote:
> > make clang-analyzer on x86_64 defconfig caught my attention with:
> > 
> >   kernel/taskstats.c:120:2: warning: Value stored to 'rc' is never read \
> >   [clang-analyzer-deadcode.DeadStores]
> >           rc = 0;
> >           ^
> > 
> > Commit d94a041519f3 ("taskstats: free skb, avoid returns in
> > send_cpu_listeners") made send_cpu_listeners() not return a value and
> > hence, the rc variable remained only to be used within the loop where
> > it is always assigned before read and it does not need any other
> > initialisation.
> > 
> > So, simply remove this unneeded dead initializing assignment.
> 
> Might be better to remove 'rc' completely as it is only used for the if
> condition now.
> 
> diff --git a/kernel/taskstats.c b/kernel/taskstats.c
> index a2802b6ff4bb..63541f1ae04a 100644
> --- a/kernel/taskstats.c
> +++ b/kernel/taskstats.c
> @@ -113,11 +113,10 @@ static void send_cpu_listeners(struct sk_buff *skb,
>         struct listener *s, *tmp;
>         struct sk_buff *skb_next, *skb_cur = skb;
>         void *reply = genlmsg_data(genlhdr);
> -       int rc, delcount = 0;
> +       int delcount = 0;
> 
>         genlmsg_end(skb, reply);
> 
> -       rc = 0;
>         down_read(&listeners->sem);
>         list_for_each_entry(s, &listeners->list, list) {
>                 skb_next = NULL;
> @@ -126,8 +125,8 @@ static void send_cpu_listeners(struct sk_buff *skb,
>                         if (!skb_next)
>                                 break;
>                 }
> -               rc = genlmsg_unicast(&init_net, skb_cur, s->pid);
> -               if (rc == -ECONNREFUSED) {
> +               if (genlmsg_unicast(&init_net, skb_cur, s->pid) ==
> +                   -ECONNREFUSED) {

I thought about that as well; and I did not like that because of the ugly
line break in this condition.

I did not try but I bet (a beverage of your choice) that the object code
remains the same also for your suggested patch. Try to disprove my claim 
and possibly earn yourself a beverage when we meet...

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2011061126130.20338%40felia.
