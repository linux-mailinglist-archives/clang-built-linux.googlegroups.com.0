Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2F4VHVAKGQEBI5TY2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF6184398
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 07:15:21 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id t28sf817215lfq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 22:15:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565154920; cv=pass;
        d=google.com; s=arc-20160816;
        b=gXx4o/aIPb2+ZvdOs7w/4fwxstkzF2IBt6tqi4slzNxh+pDo+mjMzutf1qkYiQklYK
         Dguz/xBNMgV5/rEOUj9SbkLWZq9NTlrTwUdzgZ12BS+qWbPD2CUWYy081wGolSQw4Zsf
         Xoyhuf/zxvvu1sUlw4Nao8mml8oGsA/EFXP00EwrpN5DtV4wsjGGxUkIxACU0EV3zfnI
         tF6hIJ9IrGU3NvPxzyHgstaZa34SAYMPqc3s6yRLR9PrtxfjJ2c+1pBwrWkCSR+KvAUo
         smA4Ro2YFXFTLuaMT/r6vK6xifxGTP0vJkb/nu65cX8MWWJQAgge7n466MqAZKfgGtBS
         VSQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=r6MZsiE6PKW6crCKr0eUggUlBf2n6KP+Sff/PKdolKw=;
        b=vsDuwG9/JBDoR6eTty2rug3qqvHC1AD1YXGEgE4Zpq9s20520T91BNXT1c5Xy55xkj
         2edJIob0nmm7nTaMrBuLmWWlZmE28ZFNpkq6nSFvBDcUvA59wGSAb1LDrQfHztmAlx66
         5Ab2KL1jnh9GZvZy8uxRNAkSID7se2uQUsUks0WG6Ci42YYLR+myIntviD0vdvZY2she
         UurLzA003Gj+0+7fzKP3ulIL5mZ3MUMlmEhGMWpiYCmdi6E937I/l4Kza7C/pT+R5TuP
         E9fybPzdr1vKLEJyrWUz6oMsl/oyI2bq9RbGnSf70X5rSBRPESVdeR11AWu7I16rLk1z
         DSew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U7TmMloS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r6MZsiE6PKW6crCKr0eUggUlBf2n6KP+Sff/PKdolKw=;
        b=To/Qu+aOi9pvglcOoKvcQeA1Ek4xRtz5rOOrjB1rG3GwvgdxJw87AOJolU1mkxV6Gr
         Mk2StmU/0w8i1rtYA25GmMtsMbQ0XTd4ym/78OV3lXwR+0H+N0qcvW42L7pz14fKqhE/
         91/aEkCrAI1BlNs/13XIQUeNs9hEOo70plNd4KmeZ9+v16xWBtT8NmrCCazCf6EPkDBE
         4aGj9x6kauG3gNbTn8un8V2LoGAdnGjtSPP/+EjibsmQqmo8JlawI5tqcdPVAKe3RlnI
         5F/GAoqPFri6oIfQ7L+LOjfCBFMD+a5XbORX5i58iAqc3QgyV3lg/U1So4TSIS5m8EAM
         KFTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r6MZsiE6PKW6crCKr0eUggUlBf2n6KP+Sff/PKdolKw=;
        b=Ez8WaTOc+p5FfizmzLRSqDwS44L51tTPXTzp1eEhFBWP12VNzdF02IgtJxEomxa3Hk
         F627Z1hu0T54Dmn4rwODjb/0Pk6UfwvD9BfnkT9u5akL+w1zYvov4IqJtBDzwnwR0VHV
         lX7THw0dUQyDRU1peS5jc3abg3XIqrY3ach764Nt0bJjeCOI1gItaFptu8V+D5eWDrDR
         akIoVcAE+pRRL5xVpeqSGLqoKXe1ZNY9Mzwy0pTX5gn6krWTpj+CRBjHeE6obPbDyfBf
         9WscTxPwqn9gymbCHN+uMZuKHkLsKfvpQltGzRqmeNYDiYQtrrCC6UxA4B4umbpJavb7
         yftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r6MZsiE6PKW6crCKr0eUggUlBf2n6KP+Sff/PKdolKw=;
        b=Zo0T8J8jfth8iInP4zFNSCD902bjsgpYwQFiql9hiCsbPy3qjnplbFyaqxLlkD3Ka3
         XHjbMTY7YbEcdBnpgB81kbsC7bpIIknzRTEvYVIT3Rnb6uQDo+KVHwe/nnadrhf+AxqT
         fGCgunQTRO+me1/rJ9TuxBOf4OfwufdGuTTf6QwB7Ch0kX2mTv4mcF32fu7BkOsU3ETM
         nSQtzyNMCR5mwbYytANYpMYt0LOrcGicqo+VFvSkRLNU0UxI2HImndeIq5kuonEsji7C
         EPO9HcohaElpy7Jy4jX2PYa0kVJd8LeVQNck3VUQm0wyzCQ2O/NP196CY1ECKAGfkGZF
         +b9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUXWNE9M4s3MSs2+qmpMyrJ0kuv1HvUJxZqvIv7tL48DB4gnShn
	lmRlB9RSRmqcWYtM7nxmyWM=
X-Google-Smtp-Source: APXvYqzduliYwntB+wLOh+jKyCAZeo4K6II5WwTv2hchgq5l8LQJfr5ARzj2FEBf211Acw/rPRj/FA==
X-Received: by 2002:a2e:8583:: with SMTP id b3mr3752848lji.171.1565154920531;
        Tue, 06 Aug 2019 22:15:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4201:: with SMTP id y1ls961027lfh.9.gmail; Tue, 06 Aug
 2019 22:15:20 -0700 (PDT)
X-Received: by 2002:a19:cbd3:: with SMTP id b202mr4721656lfg.185.1565154920130;
        Tue, 06 Aug 2019 22:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565154920; cv=none;
        d=google.com; s=arc-20160816;
        b=iBnmfINX8PunTqEHYzCkY45po9gcKMTYOnFSTAqTWYOwXvZ0304fDTTHaNuFWy3Bz/
         fEB/upI0HFWoheOkMZhT5epGogG1JNpbveDb8S/pdtJhjzMWgd0Pa19BWSddBus5gm2o
         v4wkNwIg10THkLU+BZH3fU87hZ4wH/5LXvwcrEsqc6BDQ4jreVnmn3kFwuF6horErbib
         h0HhfiDG1TU3YAFcgdF+e0WA0OsVs+2fY5Q0cRkrOMeIsiCAw8YeChFabuWlqUoHJZYY
         or2PWBFd1VezYxHNvJXXJCxr1rhAhVP+gQS9pjfLLpe739TuD48Hth7bTKgA61tvLcaq
         kqlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pp4YWyx3LNt4h77TMcJoBYvXi28SNsEqSfN2aO+q+7I=;
        b=qFisL3o6gmPUD+sGeCQ9CRj2Io5GffnQahxXmC+BM3UVeO5J5P2FrAnEGQ/++PN5ZL
         a0eOglOMpaDlaqSLphplRMppLKTdEsy2IiIEIKBeZ8RYdn0rcRjtw1XpoTQ1LiqgjSnN
         lH8BlRsNt+bC8isQY8PqGebJs8F7Z81es27Vzey1TJbEvKhpTCdzcBszbmgOmER0RzR3
         M9X2d7sIwMJGrqOSVggvZ8NHl+oUsOqO6V1P5cPFn6RPBmrtjg2l9WKjthAhkUhTOOvP
         34onkkB1vP5Ob1LZGoaIRFn+l+YRC0VWj3qjdOvpkx/biFoHgTjoIgawGC6fbOtDQiEK
         kh0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U7TmMloS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h11si1688559lja.0.2019.08.06.22.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 22:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 207so80395409wma.1
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 22:15:20 -0700 (PDT)
X-Received: by 2002:a1c:5453:: with SMTP id p19mr7686773wmi.148.1565154919396;
        Tue, 06 Aug 2019 22:15:19 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q18sm111889375wrw.36.2019.08.06.22.15.18
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 22:15:18 -0700 (PDT)
Date: Tue, 6 Aug 2019 22:15:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Johannes Berg <johannes@sipsolutions.net>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Kalle Valo <kvalo@codeaurora.org>,
	Luca Coelho <luciano.coelho@intel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
	Intel Linux Wireless <linuxwifi@intel.com>,
	"David S. Miller" <davem@davemloft.net>,
	Shahar S Matityahu <shahar.s.matityahu@intel.com>,
	Sara Sharon <sara.sharon@intel.com>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
Message-ID: <20190807051516.GA117639@archlinux-threadripper>
References: <20190712001708.170259-1-ndesaulniers@google.com>
 <874l31r88y.fsf@concordia.ellerman.id.au>
 <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
 <CAKwvOdmBeB1BezsGh=cK=U9m8goKzZnngDRzNM7B1voZfh8yWg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmBeB1BezsGh=cK=U9m8goKzZnngDRzNM7B1voZfh8yWg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U7TmMloS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 06, 2019 at 03:37:42PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 1, 2019 at 12:11 AM Johannes Berg <johannes@sipsolutions.net> wrote:
> >
> >
> > > Luca, you said this was already fixed in your internal tree, and the fix
> > > would appear soon in next, but I don't see anything in linux-next?
> >
> > Luca is still on vacation, but I just sent out a version of the patch we
> > had applied internally.
> >
> > Also turns out it wasn't actually _fixed_, just _moved_, so those
> > internal patches wouldn't have helped anyway.
> 
> Thanks for the report. Do you have a link?
> I'll rebase my patch then.
> -- 
> Thanks,
> ~Nick Desaulniers

Just for everyone else (since I commented on our issue tracker), this is
now fixed in Linus's tree as of commit  1f6607250331 ("iwlwifi: dbg_ini:
fix compile time assert build errors").

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807051516.GA117639%40archlinux-threadripper.
