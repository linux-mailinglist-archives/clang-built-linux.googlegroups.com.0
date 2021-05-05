Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBMUOZOCAMGQEISCMRRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A97F373FB7
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:26:28 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id o129-20020a6292870000b0290241fe341603sf1746967pfd.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:26:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620231987; cv=pass;
        d=google.com; s=arc-20160816;
        b=T4rtH9BS6ajgl8ajdOuAizgVaQgdQp5bOMZOdsXBffKEaU1FUgaRA3cySZ51sni6+E
         vNSLXBuUbw2rDYfpsSTvS4X4oXmsTqRDGns1m7aWSq76b7WtmqaS7sTgMoMAzxL/LoL7
         IAUzdq/kbzJ0BXa3zgQJmggCyUGM6YLdnXFLKHPwqHfUilsltSQTpcJLkQNmNBx/kx7i
         gngx+a2xOPcLrgwSsoY9vl9t4SvCAJz/9ZA4Uc20EUWg33CG5fG9LpmH0hayUZ+dorgV
         mIaRzQFpQHLA2hEbfGZda5i3m1kGFN8ty1KcrLsPDk8eIrPy5lVelcLaCHOmcU4wI39U
         wZ+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UnyTBTIQWWx9TQCpadki+2bAVCcy192WzWRWYSd6RxQ=;
        b=MPKLbtUC+cT7B2pbwTkvhTt3lj3pwqTvOqkKkvi5ETLSNSlrNOACgQhz1IbDDejY1o
         QMn9hEe6U1+0VYHw8OzEktVZYVZYhGN7BNkIbA45GcW+muHWNGSQWy/XSTdok+QXW3E8
         MxlPoWUASv+CvQNYCXOwRRTOmD105iRlTVfnUjv/aiH/7tAHrfnPp4qSqgjxp0q08xoC
         i9baKOkD0Oerj46fsT6LNakGzEYmP9Dk2yGbRo1ZpfcknDAn1KSGgqrXfLmTQse8B7Op
         +gy9tQbGQ3pQjAbmmKbSbJXjhq8Kw2y5iakt/fgkIRBB0eW55CT93lpdHt/oi9Uo0dr2
         XCUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OT9gM4AT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UnyTBTIQWWx9TQCpadki+2bAVCcy192WzWRWYSd6RxQ=;
        b=e+5ICfAjWVXQJM6yzeosYKbOe86VEPxS4G89M+j059CFNL7Twy7ShQm8KndwrkYZSZ
         u3guGeRJ/G7X4NzYJ7RujRGUboDpmNU+AQWcV7zOgo5WrPXlxK3QejnK6EJ1khhk2b5y
         E2bzbLNDBbvj7U76uPetNYTfTheGGW52xTFY7Q/FXLIPi4Qg0ocO2G7eyz8oqtjDGQ84
         XJi1UlbjjtdnsbNVRJOt4CSGFUISCFjAiGXmRH5st5FzGSlLCnscF5LCko0rHRIRwhct
         Fq2m1SSghHsvZCTek4a55VYxKZdP2ytQjrmc2ro3NXcq9LtYM5Hytmja/mT+3HydBSrq
         0mXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UnyTBTIQWWx9TQCpadki+2bAVCcy192WzWRWYSd6RxQ=;
        b=hbqRhXsIHgYPXccDjVcPvKLKMG6I8lyoOlivAaZQPkO1YVBZ0RpReCBSB/mrSSuuac
         DiyK1twfU7ioJ2rXO/JP+63clHw4X569EJ2F62ermmBtXIuntVSGpf1bzf8skhwUZ4W/
         fjly6/MgP6YNDgVPLXOdieB59rTArfHf4A6QIKSPxe1kNjegmZKPfXg09wmCu2cTHUoO
         25XUOK5ZEpOSHu9/aJIkeKNHHV8MPfuRjFBhl5xSgxOaK3U6ZynRXmMznjgntcZ/j82x
         EEKAM7+k2tngYTxaZCWSXAtQilk3rUB+aWC8fOhYVLyaO4b81HbOerI5m26Ha9Pon1kU
         l68A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533U6H/KG8eDqmFXwjUyHM24Y9BbPTNJFuwTbozix3F2sioiLuv7
	wkEX+lkfkYFv2ptqKmgvoD8=
X-Google-Smtp-Source: ABdhPJwUsELdh1620XIlefamPDIz9AsyPPysuQZw5/TQxUPeIu0+BV5gs14oxZwJ42n+gKq60sKXIg==
X-Received: by 2002:a17:902:e550:b029:ee:ba6b:a95e with SMTP id n16-20020a170902e550b02900eeba6ba95emr23382448plf.7.1620231987067;
        Wed, 05 May 2021 09:26:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls11466707plj.0.gmail; Wed,
 05 May 2021 09:26:26 -0700 (PDT)
X-Received: by 2002:a17:90a:4e04:: with SMTP id n4mr3847904pjh.96.1620231986573;
        Wed, 05 May 2021 09:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620231986; cv=none;
        d=google.com; s=arc-20160816;
        b=jDs1DfezDIz0vxwr+WM0PfUEmDuM/Q6YQWMgREkVmdCLGhpkvi7EQ9lyB9FbXLQUFu
         vyRNB4txfqHLVtRTXBT9R9e+Ja6CWvq9DZRovygB3ZoUrykDlnWzF1gT7vhC35ty8fzf
         gQSdosF6TP5Wof9onTav4ygAC4TIGUSWghEUaa2dmX3DaPyZBk+7W1CnzlOev4Yw38gC
         8KdagLPY8fWzrzt0wNAEygsMph0Gs3Q/04k/Ecdxq7RGMqX3No/bkmJM1VfKXLjB7In7
         WB0BijiH3NaTV6Lkaj2ql+er/M+Zj7ucNkGN+HP42s4sr56al6Q10LtODpoibJ9EjReW
         lEiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=S+sdQ2COjd/MbhkDwqhxZnEipcQZXTl8S8y+N1Ke0i8=;
        b=vr8Ohsjev9S6vBvJt0okRJuTdSDTHe8JhO4MaeG8k+9epg6lvhlH+QsmH+Wt77WibH
         GB9uo+I74adpuLcm2z5Q3nGJ+PdAoOtYkpz5ryry8MsDy7gIWUzSmn0FctJJb7eu3iAh
         KtE+ZhCZrf9Izw4UVDiOtfKf0eSpV3I/eSOiwzI8Z5Qr9cMUEsI8r4oVhVN4Jk8t+8Bp
         LSR1XGqAZdSp9ce/eD+OOomlufiWA/hO0TzjyyObxvxQokzM2y8Q8pyM7DiyUDlGWdNM
         Aj8QCUQpHz47CGVzXxHz7bxN2ySyhfhlXjy8imnHpeb2SKE3fFhwlm4ZdtvJCp9UYIgo
         hJeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OT9gM4AT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a10si596912pgv.3.2021.05.05.09.26.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C3A146121F;
	Wed,  5 May 2021 16:26:25 +0000 (UTC)
Date: Wed, 5 May 2021 18:26:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <YJLHMLq9qd5R0CiQ@kroah.com>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210403065559.5vebyyx2p5uej5nw@archlinux-ax161>
 <20210504202222.GB2047089@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210504202222.GB2047089@ziepe.ca>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=OT9gM4AT;       spf=pass
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

On Tue, May 04, 2021 at 05:22:22PM -0300, Jason Gunthorpe wrote:
> On Fri, Apr 02, 2021 at 11:55:59PM -0700, Nathan Chancellor wrote:
> > > So, I think, the solution is below. This hasn't been runtime tested. It
> > > basically removes the ib_port callback prototype and leaves everything
> > > as kobject/attr. The callbacks then do their own container_of() calls.
> > 
> > Well that appear to be okay from a runtime perspective.
> 
> This giant thing should fix it, and some of the other stuff Greg observed:
> 
> https://github.com/jgunthorpe/linux/commits/rmda_sysfs_cleanup
> 
> It needs some testing before it gets posted

When you post it, can you cc: me?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJLHMLq9qd5R0CiQ%40kroah.com.
