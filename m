Return-Path: <clang-built-linux+bncBAABBAU2UDZQKGQESBYGOHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 35568180AF1
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 22:56:19 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id p128sf392144ywh.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 14:56:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583877378; cv=pass;
        d=google.com; s=arc-20160816;
        b=zE5oEonKMsJZpCr1XdK1183VWJwJGYqEC6td9NN4mghWpT3NC4q8dK+HmpiTSKU5qq
         JGL5rcCTdTOZCT0x1kwvINQSdlRR1Go3wHO29mwlfcYiDIwXndlnlEDYWilbLwBaKnci
         dQGAPQn6KDzBCdpht+9vG6OrsYKZzU1SKXPPAKFpWkCZODSm0BX6fl8pWXoZ5JXJbEP8
         WPiyLVcIZjSfI/FBuWuVYyBPWjN/K1VkhZIwbLRV64I7BpXiMKcWeBKEJlttApycKiKg
         0QF173UnIRJvs1GaJwgRHnOGD/kpIQyPf7TpA3vnHbUIR21LlsXQ+SJOUdEcwlEBPGOF
         V/1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=vKajTYJSNU62esl1GcXvTk+m1hi9NfwMAuv95p0TNgE=;
        b=ldDlhUS5EIgKts2e9XhcJ4k6CBu0IkdAf+5xYX0WAqANoTGkcC8paE0NCg8RzWF0D/
         QESGITMxdd3LkK+W1VB6BjK0niM4aJUrv602NNqZVzmeCNkaX2jq2A6ADkvXTkusdtEc
         +Qd5ogEiErLwAGzctWnTNxFFfOuk9Z8Fp9d8MkrK6/DBa5RflEb1neGO/ElUj5uf0lmy
         l/tuPbQ/SQV7KLdbMV3mG4hm2b1WedCm4p9AOrkSdR6bmWezMr4QV1shZrtR0NQ7e6Z/
         M31/tNNkZO47b0ly853E76+hZc/ahp1STwoDcevtDwQ1idfD4vWDIvpnvshbyoDofSKM
         Ei2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pid4zjnb;
       spf=pass (google.com: domain of srs0=wnm7=43=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=wNm7=43=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vKajTYJSNU62esl1GcXvTk+m1hi9NfwMAuv95p0TNgE=;
        b=ddmQYi1MMxGFEN5eCIyIcDZS3CyelpvJzdXNUQJ/ubq8ENbCouXm5V3D3Qwy/lgI3H
         6IPMD+Yh1x0KvbEPk/5yp9HEGDakOSnd+50Ncgz5BPzqs6Ea1l8zELCeWjnNJNMukEB7
         /L/vaxpINlI/CY16nDhAxl/ha5wXQdCO08HqUUr8qzjtUCKTPTe9WdCZyq5LndWFxmII
         GLLDTLW9+7XpINtFSN2f2VsYUuNbqukjRjr80AtwevfO6ZBsC+MG7V/BOcrhQqwvkzK8
         YhVEcDm6dNN2zDMm5JDOsQCXJdV7TL6dkrxTv8tQuynibD/Lij+BLyKtblqsZjfc4YD6
         5THw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vKajTYJSNU62esl1GcXvTk+m1hi9NfwMAuv95p0TNgE=;
        b=jk7bYGf8EhqzI0ole4hRTjTHk1LAFAyLAJ+6hlEKcjmfzjomnZ/xiafIhT0OuuvENN
         rbXR7uDYJ0/5ySl3Vbcmdn0N9U4I9/LLUGoql9ZdkJ6xKgavyf/hDV2B89TzTcO+xoqg
         ZSL307xPP0lrDgcDG4aKU1SdRuSt69Pjc1p32IsC+0iDzDfHGBn1ZdqqekD5FnL6LDPc
         5fDCp7l+idXdfJh+Q0dbQPRILumh7FijZO/+1OX9EBrpgaHTfKkxPGztVZa7TihSMMpq
         mRP9BcKp2UjUKL6k3XKBvVE6WWvMuKBCqUcKV8Rf5if7SGf3h9QmzqB2OJZKFAUyh/s5
         GSfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0SeGKG/xyjzRkfWItG9z7IU9gZH33KhoLRgnZgpGzqKwH1NOrs
	RQMrs4R2CncWZUvg/Am8ipg=
X-Google-Smtp-Source: ADFU+vus5CZ/eZ+0bkHYdmB4XL+qBFpGTwwK69fUHdlYCZ5g13Pn2rbQyKKpMoQa7fhVgxlIP7FiYQ==
X-Received: by 2002:a25:2a83:: with SMTP id q125mr24624118ybq.296.1583877378202;
        Tue, 10 Mar 2020 14:56:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d057:: with SMTP id h84ls227107ybg.6.gmail; Tue, 10 Mar
 2020 14:56:17 -0700 (PDT)
X-Received: by 2002:a25:1043:: with SMTP id 64mr23650000ybq.224.1583877377784;
        Tue, 10 Mar 2020 14:56:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583877377; cv=none;
        d=google.com; s=arc-20160816;
        b=fJzTVQLbosg0uXoXQ5R1etQpvFp02JWTRNmsZTAs4Hi8U4+KxrcgD+0TFny7iBG0ae
         bgWG3AAObPz7QIvLJ7IVwE8IzHjfvBh0FRXV2JGjGhPKb4PUdHJsjObvx/8h2hSZlg+y
         rmtNMCHdXT6I5JzgOdGDq6UNgheoivZLmP+Ryd+LfFfCUKgGzZtO0NXhKyqhOzvBwpzf
         W/nbDeillh+95Ox4n3tTVbNmkedLxYQgfh5JPJ42lqLekiEuUGA2rJGEoTdx5JBqOWUw
         v/2MjbQwP7nlX7/X3+K3pLzuATmqjEIOWyyCtxR+LsWkxsE8XpdvlTOqD4k4fT1ljhTc
         kp1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=RJYo6e94gBX2TrsfxuRK/PikrQPsXWXY/Sd4gr30IYA=;
        b=IRGVNHHzrcUX3B94AT2IOnr7QbkFaTKZz/zhZH9OLdInaQJnOHc+NI5ZrmKaMyWRIO
         dPHW5SwLY7sl3QM43VqvPD+fWQccxmoExWdRjWb+OPU06olnMYMBKtlzVqLqPcLHZ6gY
         1UIPORxK8VTINv5F0Cp27mt3qYScLrHfvLU8+QesffIEhXIrJh1JhqXMxUsjwbNyivmQ
         rVY98lUpqss8U5VUMXOM+Cm/KYWDIf8+ujzMyhB+F9YMNk8bzCN29oa/p7g1cQU973E4
         BoBgISISuvrlXl7nlr4v97ESdgBLawXfQQNURpwbL3HGK0qSZuxsfOfuLTzJIfvhQuvO
         Mo7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pid4zjnb;
       spf=pass (google.com: domain of srs0=wnm7=43=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=wNm7=43=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y19si13940yby.1.2020.03.10.14.56.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:56:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=wnm7=43=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C37DE215A4;
	Tue, 10 Mar 2020 21:56:16 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 936DD35229CC; Tue, 10 Mar 2020 14:56:16 -0700 (PDT)
Date: Tue, 10 Mar 2020 14:56:16 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: Clang warning in kernel/rcu/tasks.h
Message-ID: <20200310215616.GI2935@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20200310204941.GA53917@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200310204941.GA53917@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pid4zjnb;       spf=pass
 (google.com: domain of srs0=wnm7=43=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=wNm7=43=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Mar 10, 2020 at 01:49:41PM -0700, Nathan Chancellor wrote:
> Hi Paul,
> 
> It appears that the commits 37564025a3d7 ("rcu-tasks: Refactor RCU-tasks
> to allow variants to be added") and cbd703932774 ("rcu-tasks: Add an
> RCU-tasks rude variant") both add a forward declaration to rcu_tasks and
> the rcu_tasks_gp_func_t typedef, resulting in the following clang
> warning:
> 
> In file included from kernel/rcu/update.c:563:
> kernel/rcu/tasks.h:24:16: warning: redefinition of typedef 'rcu_tasks_gp_func_t' is a C11 feature [-Wtypedef-redefinition]
> typedef void (*rcu_tasks_gp_func_t)(struct rcu_tasks *rtp);
>                ^
> kernel/rcu/tasks.h:17:16: note: previous definition is here
> typedef void (*rcu_tasks_gp_func_t)(struct rcu_tasks *rtp);
>                ^
> 1 warning generated.
> 
> Maybe a rebase or merge gone wrong? Would you mind taking a look and
> fixing it up if possible?

Will do, good catch, thank you!

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310215616.GI2935%40paulmck-ThinkPad-P72.
