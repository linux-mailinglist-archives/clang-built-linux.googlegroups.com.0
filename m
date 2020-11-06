Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBOWTST6QKGQEDQL3XSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB692A94A0
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 11:47:22 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id 67sf337335wra.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 02:47:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604659642; cv=pass;
        d=google.com; s=arc-20160816;
        b=YRXG8E5U3o3JBAPIutD5a/kQXLSoZPfAIrmLLGYpcrQbjcv1OUIIywOSi1Bxf0fkjZ
         ljYiRyEtDqmf6XgiwRpO52d0OWSrMqecNaPOiE2oOScnk+d8bxtpwYEPSkbCO0VBrQKl
         YxWCWW/ywQrk/6alpVrCLLk0eEU4q5KdobOwtH1eAbTET4I18zFg6l9wy8Pc3qNs3Ete
         JG+EmDpvF/nD1S85chAXY7vINNryz6Z2cYAomNq1gAz2efyQzg4CcQoX8Xi+fkbofp+w
         viVTOzsE0ChBP2oxJWVni/x4vkEo2RQUCRZ+cZ14sgvi05Wy5/aaI269LuH6txT0Vfdx
         IMJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=B/6DI3PoSy7I6GijEoJ8pjySRJqs1jPLrdqvB7rw0zE=;
        b=PSASgbNPZ46uqtO2BLNRJCpMN15Vusr5i3QLsmjDbDtm9I32j+m0StHVDKtW+E/XH9
         LBnWBMpmuIHPIK27pJPSRHIUIgALJqrgZ9y15WAuEzNoy5Zf7VwhalyJ6209KRxCgDLO
         juvhL8wltwxq4HCEXtefdyrmPl5zpLNrqxMTMCrWBmg//+Nms1aHcX4ZvpIf8FzioyDr
         st5w8VnKBUK21uACnMU0jxcskI8lu5FxohSo8OaePHVBtzdQs72ctc2Xbi5IbcF6U+gJ
         3ZhE6XwjEATc85xicAtLCdO4aZN0sGzMaecznJ9YL50ArD3JZnBwOzISzAkNYCeiEH9M
         eBDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOkhO3Ur;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B/6DI3PoSy7I6GijEoJ8pjySRJqs1jPLrdqvB7rw0zE=;
        b=cxie3WOP/fWzdX1mm1f/ycbwMSVCAi729MvTQtBwKgNqcWlovUlpcVhb87bKXYvbhe
         iIlCHNGX6q5sgzxsPqiJeghl3DtnEz5OL8nC2chTivwllG50fJT+z7oK1EOfkSjh4kMX
         hcAk9NW5V7HJP2/mUGoQeBOGt8kknLI8AHNPOtJH9bzBDRutM5gSN3LN0Rr703UJsnaH
         OFmbqAvj7q3EKb9Zge0kHJALi0O5FN1aBqrrNGya/SZhSXVDMb0RtgvSsawMvIqXXa97
         ruDSIrFBABehWv0qORzk1bYq0FZXQcGW/P0biIbsc0SuOkZU/z10fdBbx9lTwJMVIVUa
         AFTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B/6DI3PoSy7I6GijEoJ8pjySRJqs1jPLrdqvB7rw0zE=;
        b=oW1C62zOOu+RMLYOR8IRe3y5T4KRykEnZptqiCwlYOKrOoQqLTW2UKcdLD4lwzEsFY
         N5M4OnmZ6hMqoMAGn0VOYm77W47nFmVIIlgYpIBmBnvVymWJTN5OPUG3+yy4lpXFe0Zu
         kXakTiGwmh7op0wVAnVopdluVAFi1Cr+HqYFr4HcaaIeOqGUp00SaCU1GYmrpeNEhhhS
         b1+siACMiG/paO/FOL4LMHOLUZHLXDHGFbIgLtF9gyRBenlI2f3xIe+l+9KlYyVKc4HA
         YcKrpBEqfRheoiAMQG5xlihAvtHjBk3ohMJlmXp8cRd12AGYdKORPc+X57y2KT506Jes
         QJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B/6DI3PoSy7I6GijEoJ8pjySRJqs1jPLrdqvB7rw0zE=;
        b=PuXOyD61aYoOyqX+QT0KirxuAK87hBcStIUCoc5Ow+W7XdxfERnS0pftgh9hj3R3Xf
         G1741xaxWRgy/W2gyx+5cSdP2bWhPuSSQ4OKYGneroVFM8jLfnmeU64o7mS5XC6Jn9oe
         Oh+TGzbK8r4vifmv8XKvG3aOTIp0SmSclQLoF5M7q+DsEEZzz4QX+3IXVyzJ7qPGEUgh
         Ft5QaxL84p2LTV1sxD3hkgPYLlsIjuHDvaCuK1ob18VCcqG9Y+unXRdgHdOI3EY/Hesa
         oGeijRwC8P0n6JD8y+KeUrbubMAXxBculWPhWJEry3O2t88K9ymPoGxp1jQAVLetbb56
         oOCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310fkemoAnKxjbEy9hX/hFCJHRx6b2UIlQZ03Gh7H9XSxosEPzJ
	6uQgeAbbfFRPmTNMyDSLoWA=
X-Google-Smtp-Source: ABdhPJygOodHf7WeM56gE7QCEDmJVDLek8Wz8GYZ8bitaRpzBYv7Xn5OhPeQbeMQlRyhEM4goZ24uA==
X-Received: by 2002:a5d:5261:: with SMTP id l1mr2110415wrc.105.1604659642581;
        Fri, 06 Nov 2020 02:47:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f70d:: with SMTP id r13ls833670wrp.1.gmail; Fri, 06 Nov
 2020 02:47:21 -0800 (PST)
X-Received: by 2002:adf:e6cf:: with SMTP id y15mr2099894wrm.116.1604659641636;
        Fri, 06 Nov 2020 02:47:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604659641; cv=none;
        d=google.com; s=arc-20160816;
        b=wVL0XGiaTgf+UPCElzKiZ5Mz8vMZ5po19p3d7QeUm8vDW39APf/Vwfk9GfjKX8S1cH
         NggcUHz2NLxH/n2e5vhkPjTUR9nIKnDwaYGheM+Pqv81HB61nb8EH3HtkLB2M4fLuigo
         Heeuf9r73ksTgpU+gSS5lYksX1HKbkl0AD4qEkIRw+SRI+y1dBmPl0SCFu228b/UVJ3O
         kgi0eE7/JgyvSem/vTX8ppmTeLvLMRSFuI/me/BuJVqVu9i7MW8uI7BJiGbVMsE1Xtcu
         quXXH8NSuKX9oFqCt9efL0BsBZ1Eo1CYY5Ya7j37rKOKH1lG87whWBWZas/S0m4crJUb
         QIqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=sS6LjFB1Hny842iCOSq0gSFHnnlXSZfE6BxMZzj8mek=;
        b=RfwTz5LatpxZM69wX75qw1oxKIfEFYZdmVKzUP+dNS4WochqV+hHRwDSBfhL3JdeXv
         M/kpj6hBj25fdMkNZCPbNic5+sBHdv8s3mvpdWt5QP4tPRHtLMmw4n6OHkIJefzS1hKN
         vFsmHwQAJf6yiG26aqNmN6w1UXHc0DRHILMYS7+7kPgJ4J917bAuWhhxz08B+YmCVx80
         eqmmVhfJZCugNSsioq+QWEHiYDOB4C0CINsvZeTRxyCXfIAPuqELuYdnV5aVT1xMKaAj
         VKuBIdyHQKzjOQSYg315pSi3WvRe7fPI+OSnetpTQa3vK3MBx9dsn5+wurp44RcnYOR+
         deaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOkhO3Ur;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h14si39335wrb.3.2020.11.06.02.47.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 02:47:21 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id dk16so1231934ejb.12
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 02:47:21 -0800 (PST)
X-Received: by 2002:a17:906:748b:: with SMTP id e11mr1306240ejl.513.1604659641272;
        Fri, 06 Nov 2020 02:47:21 -0800 (PST)
Received: from felia ([2001:16b8:2d20:9d00:e580:adb5:1ef:950d])
        by smtp.gmail.com with ESMTPSA id j4sm649195ejs.8.2020.11.06.02.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 02:47:20 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 6 Nov 2020 11:47:19 +0100 (CET)
X-X-Sender: lukas@felia
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
cc: Nathan Chancellor <natechancellor@gmail.com>, 
    Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] taskstats: remove unneeded dead assignment
In-Reply-To: <alpine.DEB.2.21.2011061113270.20338@felia>
Message-ID: <alpine.DEB.2.21.2011061135510.20338@felia>
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com> <20201106095004.GA3269193@ubuntu-m3-large-x86> <alpine.DEB.2.21.2011061113270.20338@felia>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZOkhO3Ur;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642
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



On Fri, 6 Nov 2020, Lukas Bulwahn wrote:

> 
> 
> On Fri, 6 Nov 2020, Nathan Chancellor wrote:
> 
> > On Fri, Nov 06, 2020 at 07:22:10AM +0100, Lukas Bulwahn wrote:
> > > make clang-analyzer on x86_64 defconfig caught my attention with:
> > > 
> > >   kernel/taskstats.c:120:2: warning: Value stored to 'rc' is never read \
> > >   [clang-analyzer-deadcode.DeadStores]
> > >           rc = 0;
> > >           ^
> > > 
> > > Commit d94a041519f3 ("taskstats: free skb, avoid returns in
> > > send_cpu_listeners") made send_cpu_listeners() not return a value and
> > > hence, the rc variable remained only to be used within the loop where
> > > it is always assigned before read and it does not need any other
> > > initialisation.
> > > 
> > > So, simply remove this unneeded dead initializing assignment.
> > > 
> > > As compilers will detect this unneeded assignment and optimize this anyway,
> > > the resulting object code is identical before and after this change.
> > > 
> > > No functional change. No change to object code.
> > > 
> > > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > 
> > Question below.
> > 
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > 
> > > ---
> > > applies cleanly on current master and next-20201105
> > > 
> > > Balbir, please pick this minor non-urgent clean-up patch.
> > > 
> > >  kernel/taskstats.c | 1 -
> > >  1 file changed, 1 deletion(-)
> > > 
> > > diff --git a/kernel/taskstats.c b/kernel/taskstats.c
> > > index a2802b6ff4bb..bd18a7bf5276 100644
> > > --- a/kernel/taskstats.c
> > > +++ b/kernel/taskstats.c
> > > @@ -117,7 +117,6 @@ static void send_cpu_listeners(struct sk_buff *skb,
> > >  
> > >  	genlmsg_end(skb, reply);
> > >  
> > > -	rc = 0;
> > >  	down_read(&listeners->sem);
> > >  	list_for_each_entry(s, &listeners->list, list) {
> > 
> > Would it be worth moving the scope of rc into the for loop, now that it
> > is only used there? Looks like it used to be used in the main function
> > scope before commit 053c095a82cf ("netlink: make nlmsg_end() and
> > genlmsg_end() void") but if this is removed, it is only used to check
> > the return of genlmsg_unicast within the list_for_each_entry loop. Not
> > sure that buys us anything but I know you have done it in patches
> > before so I thought it was worth considering.
> >
> 
> I thought about moving it into the local scope, but it is a purely 
> cosmetic matter. Compilers are smart enough to generate the same code no 
> matter where it is defined.
> So, I always look around in the same file to determine if there is some 
> kind of strong preference for very locally scoped variable definition or 
> if they are generally just all defined at the function entry.
> 
> Depending on my gut feeling in which style the file has mainly been 
> written, I then go with the one or other option. In this case, I went 
> with just keeping the definition at the function entry.
> 
> There is really no strong rule, though, that I see serving as good 
> indicator.
> 
> Thanks for your review.
>

More specifically, if I think rc should be only defined locally, I would 
probably need to apply the same argument to skb_next in this function and 
put that in local scope as well. That did not happen in the past, so I am 
not going to change that now neither. Hence, the change stays minimal 
invasive but and that is important: it makes clang-analyzer happy.

And a happy clang-analyzer will eventually point to real bugs :)

There are a few examples of dead store warnings that in the end really 
point to missing or wrong paths in some functions...

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2011061135510.20338%40felia.
