Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBLWIST6QKGQE5Y37JPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F1A2A9416
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 11:23:43 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id s85sf258673wme.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 02:23:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604658223; cv=pass;
        d=google.com; s=arc-20160816;
        b=RI/gT3VAjJvj7pMwo9fS02oLOJX+uCHLuVIva8aPeY7Se5oebFxmsJpsOUjMZZM2P+
         BBOGCVKN3Gs2APcTW17e7cT6+15X/NG32Gy6rfJGW5Q9ol2hd4w5I51jRJ0sgOygVKiH
         W99cZxiwM9iT3OV1N+GTIJ67f1PJQVnsPd/SF9JfI3r0feH4ayDaBFCpliCxfYQUV9ds
         gMXlSjUXvJ7Chw71t0CfH040gUvE5Nk/grgZ21y7j2+98PsbafkcmoGsbOX1Rd7hDveC
         q40QpH/2cHWU9mtvSk1XdKeffe/LL+OKNyNPfBHCZQXTltVkK8uNDZayF6sEGaWfFkhh
         xV6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=A2SVZw5y4W5bPiATVyP0qyhTXQtXP6yWXfBjyNBbg0I=;
        b=FOmlWLcXvcf0UqkpUFV+oukO1ztXdttgKIHnCU8xjDpKOnogkuMwXBUTtERXym/g8U
         QS1WjojiGsO9STg2Lwy8eTD2TcEOF88y7WhkZQIvBImFkm3oRXu9tqi8RfCXsyy7B+Ki
         VyRaHG80hj2OkWLFPEwyxfF7slZn/MnKVa6QKdHn5i1KFyqulOfCs52UOgrqCDNFWWn/
         QteTZ/QKMLbp8o7Dv+bReJWAvnkY8b16oLgAoEJN0WjoqNYoz+WzpWEbmJIuc2bgj4n7
         uTDfLdNLERSTpajL4KeV7lgAeM3wU1ficp6EYfVnXvDfThWeDjwG+TUqq++m314WO5zo
         wVwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iu8FzfnH;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A2SVZw5y4W5bPiATVyP0qyhTXQtXP6yWXfBjyNBbg0I=;
        b=Rbii7WRJldNCFkl5m+7D76ku1nm7p/BhHsXnD1cdIl1GcikQJMwGGrkCX1RUQ5jL5y
         ir8Lk5YNbunrxHJ8WAb1KwcHcKrJkyJfAnGGy3ypAkCPUbA4QcnROm9JkpyBh9F2RIvO
         mG7P0lS9XrVqbtrD+3NxX37F+EISLwoSRROQaglpcgxyP5ofANGgOBbAgsO1hKfkV9F0
         Umk/lO5bxdJNAnGIYsW4Y/CW8DlcmxOaFiDQFwuBaAJyyYnIREi8NV3gA7/j0mS1Q+3a
         2f7TxCkov8UhdgJGIzgwkHp7cuy6O2TfNkbCIj4YQBVnItUEQhWSdn4fNTAOm70TwYb6
         8daA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A2SVZw5y4W5bPiATVyP0qyhTXQtXP6yWXfBjyNBbg0I=;
        b=MlF3n2aamC3o7KhWt0FXxnMEYdYlF9P80odj7kGW5TnoYMev1VPIXDwUzrWXvv/G96
         qZSG4ixygfoR4njukLiZUIjkKtn7bcrFiXtS+Y4jADYtD3S3ykoLXufIv4rUOKvT3ezc
         2ZDd6yFNvTnM7U9f9qOxyCaj7uhJ+RTluDEttwV1Ar1eov7EviQQJc1rK6WK///eaXU5
         IUBS64R9lxPh4kNYVVr8molLUaiBScCw/jLA9gSs5lJZYQb+CPDJhLm73h10y901ga8p
         gMCM0Ehk/QW2TIckusTVByew4bVFS84D9TZFtYT4XMnDQT+zxrjSIPX2K1qqontcRHr1
         6Ogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A2SVZw5y4W5bPiATVyP0qyhTXQtXP6yWXfBjyNBbg0I=;
        b=gfrjeyzK6lVumCUpAJ4nJglJm2vQZntaPn+aQ4Eo2y4kFGcS/bWmHYIxlTxkh6OvtJ
         Zw0EKDnTnnjVMfeyUMl4jD2XrM+5rO8Z9LQD1jFGnP2A8m+771ZMGF+kfB1lSV06lRFI
         M2Yz6jKwr3e77ORYjOJ+BRXWuNfgJCST6eOfF6CtWcZZQKr6mY8dz9dtO3Z6A6lk09gx
         Z7s8ii7nT0kf1ztjypu3MHqxQ4xyPq12MEbhSCqepp9aQ2vJ6Altjg8xA4xBEtxiC2xi
         cnJQUgLIjm1oHJg7Z+EE/h4QKUDlzw3SqHgd5dzNoukdxNWuje8WLJ1PZyaCXlp3JErH
         nVMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530i2RMb/GjPr7pU8djOM0hipzTIhwC4YYDOMLrwTxMAF1AVd/Ip
	ZDHz7ytrVmMXpYjfAQrp45s=
X-Google-Smtp-Source: ABdhPJzZUEdkUiBR52PXz4ImIv+q/1EFfH8OoNN430eYw2x5y4sUwtMsYenHi6/LeMZDY/btp8ss5g==
X-Received: by 2002:a05:6000:1d1:: with SMTP id t17mr1965831wrx.164.1604658223178;
        Fri, 06 Nov 2020 02:23:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a981:: with SMTP id s123ls436670wme.3.canary-gmail; Fri,
 06 Nov 2020 02:23:42 -0800 (PST)
X-Received: by 2002:a1c:4b0c:: with SMTP id y12mr1748557wma.91.1604658222178;
        Fri, 06 Nov 2020 02:23:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604658222; cv=none;
        d=google.com; s=arc-20160816;
        b=j722p1Bwok1JX7MFPOIlmgpPO56nP77oNNAo01DKF4sxhegaAK8cMKdpshIWvcx4uS
         OVNrmoh+E/63YD1I/I49VZGog4sKg1Nql6jD+hOTNdAp0SR+6WvSLHPBnnDvPeZx4MXD
         JnChn8gyMlW11DCp4lmtTmYTzub3mtqLIAy+b6vD4hxgPhQ2jYcqIZ1bYDG+7oyMcSRg
         nWoZHSphbMt4ym4EU51RaxL/wiAfAgu1pjAWT/MZ25N2czVsEZM/xgdFHsHqIRW9a6yK
         vkjgV8shAHtlG0k0lIihpb79WBdkan56c6uLu1NT5WkIdz1DpG/2znO8Qe1pbYg47a2Z
         zK1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=mzNiuNqGeFamlvkvbNuJC+7srQmi+KnHfUNnRKxl8XQ=;
        b=yTXcjgBeNscw7Y81JSGit+c3NH/jwFNmWtuHsoBvb9kToxLRHSOGsZ+DdtbqoU7tl+
         uDooqS7Uk66bHQ46HNN8s2YlMAb1sQ7bxYfVNJ23nemK+ZM82IKfJUXHcFJRNsJaEHyP
         0Qq6BcYfNJ+xvLUjQLYQVI9wtKCffO8orOJrU4R/OjAHabZRV3zVfE+qhlVMytEJEp0o
         lVtu5qUsvAzhCY8KN3QIFKddU9lSvNcRoldospoc1WrC/hDQmpxJ0aHEtrK/x677AICe
         VMT5qeqoc97RMfIgm+v3/jb/2z4ngYep6yk0C+NhbtBDk8gIlpseIQ7bZLqFIMaqmGuS
         TxXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iu8FzfnH;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y14si37536wrq.0.2020.11.06.02.23.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 02:23:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id k18so812325wmj.5
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 02:23:42 -0800 (PST)
X-Received: by 2002:a1c:7515:: with SMTP id o21mr1724178wmc.5.1604658221759;
        Fri, 06 Nov 2020 02:23:41 -0800 (PST)
Received: from felia ([2001:16b8:2d20:9d00:e580:adb5:1ef:950d])
        by smtp.gmail.com with ESMTPSA id k81sm2067568wma.2.2020.11.06.02.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 02:23:41 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 6 Nov 2020 11:23:34 +0100 (CET)
X-X-Sender: lukas@felia
To: Nathan Chancellor <natechancellor@gmail.com>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] taskstats: remove unneeded dead assignment
In-Reply-To: <20201106095004.GA3269193@ubuntu-m3-large-x86>
Message-ID: <alpine.DEB.2.21.2011061113270.20338@felia>
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com> <20201106095004.GA3269193@ubuntu-m3-large-x86>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Iu8FzfnH;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::344
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



On Fri, 6 Nov 2020, Nathan Chancellor wrote:

> On Fri, Nov 06, 2020 at 07:22:10AM +0100, Lukas Bulwahn wrote:
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
> > 
> > As compilers will detect this unneeded assignment and optimize this anyway,
> > the resulting object code is identical before and after this change.
> > 
> > No functional change. No change to object code.
> > 
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> 
> Question below.
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> > ---
> > applies cleanly on current master and next-20201105
> > 
> > Balbir, please pick this minor non-urgent clean-up patch.
> > 
> >  kernel/taskstats.c | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/kernel/taskstats.c b/kernel/taskstats.c
> > index a2802b6ff4bb..bd18a7bf5276 100644
> > --- a/kernel/taskstats.c
> > +++ b/kernel/taskstats.c
> > @@ -117,7 +117,6 @@ static void send_cpu_listeners(struct sk_buff *skb,
> >  
> >  	genlmsg_end(skb, reply);
> >  
> > -	rc = 0;
> >  	down_read(&listeners->sem);
> >  	list_for_each_entry(s, &listeners->list, list) {
> 
> Would it be worth moving the scope of rc into the for loop, now that it
> is only used there? Looks like it used to be used in the main function
> scope before commit 053c095a82cf ("netlink: make nlmsg_end() and
> genlmsg_end() void") but if this is removed, it is only used to check
> the return of genlmsg_unicast within the list_for_each_entry loop. Not
> sure that buys us anything but I know you have done it in patches
> before so I thought it was worth considering.
>

I thought about moving it into the local scope, but it is a purely 
cosmetic matter. Compilers are smart enough to generate the same code no 
matter where it is defined.
So, I always look around in the same file to determine if there is some 
kind of strong preference for very locally scoped variable definition or 
if they are generally just all defined at the function entry.

Depending on my gut feeling in which style the file has mainly been 
written, I then go with the one or other option. In this case, I went 
with just keeping the definition at the function entry.

There is really no strong rule, though, that I see serving as good 
indicator.

Thanks for your review.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2011061113270.20338%40felia.
