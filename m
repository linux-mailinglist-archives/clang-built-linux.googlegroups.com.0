Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP4VRTZAKGQEEBUT6DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B688159A4F
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 21:12:48 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id k24sf2948686uag.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 12:12:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581451967; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z9rt9TIjW6Tz9B2S9ZkahnEg+GKch6xbBFnPD6ZHfH+trRNxjQmLe7h2Pd6B4O79ab
         yx0qRssqomEZniae0GRpWui0e0mKBrNAxq/c0wxStO8/r9woBp50YIx7Qi/X/rdMHHLu
         IooEWuKx7QQ6QS+Z3PWbOGyFngS+wwyQCMxCNCqk82QcQwm1Lf6IpbTChbLLmWUe0Twg
         AiL52RS3zxVRdowntHaMDu82xCWQ3aVamFsHAUDfp4iYpvXswClw7yUDlqnHfi05kLt+
         QFuHTHEDKQ7gzEwfIVMfksQRGCxyFtRCQi245p8udDFcSiZvYRO1HTlApDR+EGsFoX+v
         i9jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jOYY55GPU91NOc/R15XkHOkKfBXOzjYaiK7n3HYBLKM=;
        b=mMD0Y3YGJb5DAWoSFqcg9G4JFDTez2U10xD6tBypdR1Ph7zugAKNgSVFOJsnsBbxdX
         SMcuqoo1bg8S65sg9tUSUAy6EdYeTt4skQcO0XFQjCEJTmPujab0bOV+OEjCRyUExRqj
         ypxzVqiOE00fJbRz/KA0BxNI4xnfAoqEc2VEGBFYyRcH7aRT1tGNN40wzc1xqBlqBl3p
         wcmdrgVw93uzJoVTa+UuOwT7YTq1FWztcrovdfgGWzwdHJcM790QMozyWWWlGNUH8Eab
         uaWgTBYtP73XHujEtTlxGf1/PNUrkuYmkrrNbNIIRQL0ytEYqHCUiPhorPzh94Wbns9w
         ulvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jVeKyYKS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jOYY55GPU91NOc/R15XkHOkKfBXOzjYaiK7n3HYBLKM=;
        b=B4ImwIEGgoBN9dCpgr1rU45OQxujcDx4NiUHr9+6p9ZHwXt3DbppZK3SebKq5Qf+tm
         L/Moex9VeiKReHsG36VY8XiqVTHLBOxhbABGKFOsuPhElChu6BZLaa7+UR9Bv1GMAtz9
         IJNaTF1J9rxIrD+KZKrHPaSvg9YYi2uzzJYGhXQZ1z1TaZlBG6GwSdnLNmduKlcM/Wap
         mH0tAlDPwmPYVfGXVu0xu1VNEd49yVDFgD4u7WC5XxNnjCZe3gFsBGmAVaFqZmx8rLh3
         vcBKAMmmaamP2UdaGnKI64BDGyKfXIUQd5qPw0ewL6wpaJGI+E0YGJ9rlxV6yLubiZpn
         h0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jOYY55GPU91NOc/R15XkHOkKfBXOzjYaiK7n3HYBLKM=;
        b=E8rCg+KT6MNTF+f/1Kapip0aKypc6G5wMy24UcbEJHQEzXK+vWGj1w9OCBkFGYn/Y/
         JSFmvGBMda8T3nq21drwhPHk9tUBB4cWhVGsHkpRGg9XLNDpsDx4jnUEFTX96hiYLm0S
         1kDL5A47bu2Osn5vN/+qc0autnd/Jk5yznuB2RV0x0bNGEcKn2BlRuG9/34FCNkHX5Fl
         Tf7X8tk7PHXgDyqA4k3IwFglLx5/a0kXib3MfshZAaolOuBwjTO3osSCnSQ1oSHzh50V
         24/JAkbq+jHU1vr+Ab6216y9fHDJvwXM/vhZpaxvGjb3AIxU5qYEDSb1D3STMltat5SG
         LmJg==
X-Gm-Message-State: APjAAAUOaxFbX75vxNWJp4CtTxsMUqyI20YpsKfYewnZm4pkU7l5rEN0
	1s3hNwewSMMSlpGEzyHrCkE=
X-Google-Smtp-Source: APXvYqwRZv46z0Xy1BhHYoBEsjTYgEfiH4AsCUog7RHWHI69IkEjFc4wpIg8S5rtJfysgqxyU1Bu7A==
X-Received: by 2002:ab0:20a:: with SMTP id 10mr2666730uas.19.1581451967665;
        Tue, 11 Feb 2020 12:12:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4e02:: with SMTP id g2ls783176uah.0.gmail; Tue, 11 Feb
 2020 12:12:47 -0800 (PST)
X-Received: by 2002:ab0:3350:: with SMTP id h16mr2597935uap.142.1581451967347;
        Tue, 11 Feb 2020 12:12:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581451967; cv=none;
        d=google.com; s=arc-20160816;
        b=dENqmPZBkqUD00POzLTqE/SA76sEvm7/f9hqGQPmJLt2Z8YggB0lnCpo/9r7hKyosu
         5zKBD5TLwbCjz2urHkSn2QbHyaVsdDHxlMSPpyh+Y9qmGNxTHXNtsTyPil9Sw7g0IBkt
         q+iBVljDVnWEptmb0HZyGO9y6/Wz/xPnSZMicuwHzeEc1f3z/iSlxJ5qZsOhJCVI4x0r
         Ls9qg5jetkL4bjLV6Q+86dy5o6d4UepnPJbWpq1tZPKxeWZF+qwMxJuho0CQtn2ew7+V
         koLirs9uD/F1ri8e7A6BU0StL9Jl9iLdxP4C+hevLc6wVvVKuKKdINeNs/3d85uOYou1
         xHog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wlqJl8lJ0d/NouuQRbqG8ZhYdISr8b6hpT80DhDEOT8=;
        b=vtaHfX5Wj/ERM9MWmIN+i2QK47guyD5N8XEcIL9DWxvv+WZZfC4OoaxPnQmffkL6fd
         Y2daeS6UI+EcIa2Of9xmNJCeku2GiahQx9zTKplVABl7d3LpQtcBN0PMNCdLB72HgQBr
         YYUZAHGdxOAqyIYJkdSZMZsoVHSwagw7qgjBRFObEANAeriUIA+NL+ttCYx+wpq0aS9Q
         vwmdBvrr5fsTaGqP9jyZrCOLD/jdZ4ic1+y9L/mnNyB9E19Xso1YekhAs35WPXM9H0UA
         KdDCsIKC+t+3FLeTEAGhCAdnP4B9ccMj5IKiQvVQ/QvaDZNbwtl7kHhaDqjxQLsCmxWJ
         fvRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jVeKyYKS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n5si252027vsm.0.2020.02.11.12.12.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 12:12:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 6so6336701pgk.0
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 12:12:47 -0800 (PST)
X-Received: by 2002:aa7:8618:: with SMTP id p24mr4896709pfn.3.1581451966090;
 Tue, 11 Feb 2020 12:12:46 -0800 (PST)
MIME-Version: 1.0
References: <20200208140858.47970-1-natechancellor@gmail.com>
 <your-ad-here.call-01581426728-ext-3459@work.hours> <CAKwvOd=CWKnrY_T8vP4a-KXkz-V57dFqk+6FC_krm=pVAVibyg@mail.gmail.com>
 <your-ad-here.call-01581450834-ext-0583@work.hours>
In-Reply-To: <your-ad-here.call-01581450834-ext-0583@work.hours>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Feb 2020 20:12:33 +0000
Message-ID: <CAKwvOdk_6kOVPMWOuZ1r2HyAQ9MhE1=n56GhrO49bzghw3724g@mail.gmail.com>
Subject: Re: [PATCH] s390/time: Fix clk type in get_tod_clock
To: Vasily Gorbik <gor@linux.ibm.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Heiko Carstens <heiko.carstens@de.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jVeKyYKS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Feb 11, 2020 at 11:54 AM Vasily Gorbik <gor@linux.ibm.com> wrote:
>
> On Tue, Feb 11, 2020 at 05:30:24PM +0000, Nick Desaulniers wrote:
> > On Tue, Feb 11, 2020 at 5:12 AM Vasily Gorbik <gor@linux.ibm.com> wrote:
> > > Applied, thanks.
> >
> > Hi Vasily, is this the expected tree+branch that the patch will be
> > pushed to? (I'm trying to track when+where our patches land).
> > https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git/log/?h=fixes
> >
> Hi Nick,
> yes, this is correct. There might be some delay due to ci runs. But
> this particular patch is now landed on that fixes branch.
>

Ah, yeah now I see it, thanks. The aggressive patch tracking helps us
figure out what landed where so that we can better backport patches to
LTS (hence the Fixes tags you've seen on other patches).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_6kOVPMWOuZ1r2HyAQ9MhE1%3Dn56GhrO49bzghw3724g%40mail.gmail.com.
