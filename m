Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW6XTSEQMGQEHQBGJOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3464D3F822A
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:51:29 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id j11-20020a0cf9cb000000b00375f0642d2dsf276295qvo.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629957083; cv=pass;
        d=google.com; s=arc-20160816;
        b=nIww0p7UGQTPjQO4zd1Ufcxn4PC1UHmYwE17vPmHkv+MxU5VF6A8XOPQh0lFpFOVGj
         yTTjp7r5bNTQtNI2PymMl7bEjbEJm2RyKX9hktUF9nJPuhJBc6RH7+bL53Dbba4f0sZi
         2DmyXWQl8+wUYcqQ6Yd7pbKzK+dYPY6iwf5mQg/oRPPV0rFV4JRVvOHOXmcOF2jDTQuN
         ol3uVArmUf9vdBe5hfk8lKu5/ibjoQaiuAIxOmasiK36HU43tCZ/tAO77KoCxVpng0E0
         La+uNlivp9Ld5Z0Cxk9pwioJqZWJPV9sg/rICLQPjW63I4W3ZEkyQjqtqWkPkYtqW0SW
         r2Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0M2GDiub2MxAB3pCUoufRIK7yX0d+nkt4F2MGxqk4T4=;
        b=zGzcr0qDb9sEnLN+RsYNw62fWeE9B+cQoLk+qpUxUatGzKOj15t7V0bSS+N8CWEUcQ
         Ad9AP0u8P0UCHsFM3gTIqSljQPBr19on5RVOcA6CW8IHtrSRsGyR8aKGtTZ1tZjx7RM6
         LW2DHvR0ZYizqIVfYKqYxz1D8wV6dG0HRkXx0m+kHgbxI+iwGts3dr0xYh42z91rC4Ok
         jwvSsWVzNhZW38Y4QiZyLcio8x98kOkKoNVVsPHJdKrcWH8oYKIl8Q4KAHv8fELm/02q
         ERvbQwcTV9SwWJHdJ7EhpJopV8j39lxwvnxbf8jJkWEXvj7nlAMY2rSbczDBaIgT+vYI
         qiew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h98ncCno;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0M2GDiub2MxAB3pCUoufRIK7yX0d+nkt4F2MGxqk4T4=;
        b=Kjy09dBtjCQdoMWjhr9HYB7GGc6P9EathqYVrxNRifAJpzvlWadC2PY0MZ0fOfhwXj
         lJOln92Ft/8iwZ8oa2F72BRn9CSOzEm2YUvEuFuOrmZr2YIJ7TIzwzdMFsAlrWf6Q+zM
         /IFgih4ck/Aonu24+f0rzSSPTO1a+dL1z1UrYM/1xBSCXqpklw+6QodPF1LFJwN+Kil7
         a/OdBL32T6jNm5VqxrEFX5lo6WRLt3tRSE8csrAUoA6/PwWbNrZcJJgT7XeWT3V15X9Z
         lv2jCgrtXfiY3ahGnBRi8KPtB1fGiZVGk3eqgqbjNGNQCwTPs4OcOnJCLty0D70zfs9s
         Kppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0M2GDiub2MxAB3pCUoufRIK7yX0d+nkt4F2MGxqk4T4=;
        b=ln7B/SVUxJHgn2dKc936c8OlzjFDujKPzVZt5xmKGy2h7VRwV0y3doZTGF9n0sNiCv
         8w0bJ+nB6l80hcKtSYFp12uTrg+jskGS9TdMkNaSZNm1BfqyW2fz+bIGPBpN5auiWXXq
         IBvSQLcS7S0aJZl+exvdLJJpAZuQTnLZDZbllmT8denEyCX4rGmDDRZcOj9ESbe1vlD9
         SQw70+7ZxRtDtXwpXGIR4Qpe9e87W4i5MZIq8S+0DYMdNUWHCwHKKVNBM2VR1hzmxV/M
         ML7+MipEqLMnDqNHCKEQVtQWt/jfhWhrqWrwZPpZwhejVCQ2U6A6gHtWCw6/xW3W9TMo
         VJvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OGU2ZKs6Bki4pySnS37FuO7sgrfjWIR1mz5nu+12/3/HLkLkS
	JqJ+nWLrbBGJ9rR5DF25UGU=
X-Google-Smtp-Source: ABdhPJxWbfYtJAwrcNAMBs6BybyfYR56sXowG22PL30nh4hobNLT0eRbJR5DXbeBaVj8iS2UsA11gw==
X-Received: by 2002:ac8:7cb:: with SMTP id m11mr1857024qth.72.1629957083247;
        Wed, 25 Aug 2021 22:51:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:23cf:: with SMTP id hr15ls1408673qvb.4.gmail; Wed,
 25 Aug 2021 22:51:22 -0700 (PDT)
X-Received: by 2002:a05:6214:1a07:: with SMTP id fh7mr2406390qvb.41.1629957082874;
        Wed, 25 Aug 2021 22:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629957082; cv=none;
        d=google.com; s=arc-20160816;
        b=arn0ggCRV6DmdEfxnBH5ZhWk0qIvkePLmWfJjf7h63FPuRli/2baPpuLMGkW3QZVpP
         fIvlOGbpTosighitBbep7To6x6YEXTQqEthNOaTkX7HtLepXU/Ww5a4EYLqgBFgP/qBB
         EAMlBmd9kfZt3yp8lb5nAJ5OmzwEB/uYBPzaUMoMyVm5XSXSYZjxkY9rCdT6In7pqb4x
         jJrx6hWJzDd8vCtF2X1MDE8oC/1stVvVybfkwp6a69ti9iRZlT6+f4lJcD1oaH7Kof7o
         f+bkJhk2RsyLqY4cOZ+Jr7u2tP4qRu8WWy12n77QUgf+nsQLYbWOcEGhUmJCZtqteeOe
         DXxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ccQ0MGCdd2sOJEH6txbJHSp3br3UWRPN7Oxkykdkfrk=;
        b=unetsBfdws57Hwm1+HNPpoC1viDihuLvvJ8f3uu9WBHsUsa8v+E4XkZ4OcFFyhZLpa
         jgr/YKa6s/uF7ydMbBJNwghi6UzC+aFnAj6L4Ny92v+MjzK+Yj8uEX/tiTHYXwNHlEue
         2uXYxMX1cchN7PUsjx91s7JdpmwGr5bEw9NK8R2a7tZvTWx/azaMIowL7Hej7GPpzeNi
         tZxo/2OMt8YL7qtmULVqF3B8iF28VJBz/7y5nuoKPSRcM+5p4IYlyzsd2jqvQwmkEgNy
         9P4ekVMX9JZuqS4FYzMfEozEDMfFRjY+PlziHPVnnbLTX6EPcdzutNGD5MKX+0Yfq42u
         BGFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h98ncCno;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id 10si177921qtr.1.2021.08.25.22.51.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 22:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id oa17so1471896pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 22:51:22 -0700 (PDT)
X-Received: by 2002:a17:90a:dac2:: with SMTP id g2mr14392631pjx.45.1629957082083;
        Wed, 25 Aug 2021 22:51:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c24sm2088939pgj.11.2021.08.25.22.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:51:21 -0700 (PDT)
Date: Wed, 25 Aug 2021 22:51:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Keith Packard <keithp@keithp.com>
Cc: linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nilesh Javali <njavali@marvell.com>,
	Manish Rangankar <mrangankar@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Phillip Potter <phil@philpotter.co.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Johannes Berg <johannes@sipsolutions.net>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>,
	Ross Schmidt <ross.schm.dev@gmail.com>,
	Marco Cesati <marcocesati@gmail.com>, ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 3/5] treewide: Replace 0-element memcpy() destinations
 with flexible arrays
Message-ID: <202108252250.C1DAEE5@keescook>
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-4-keescook@chromium.org>
 <87r1egpym5.fsf@keithp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87r1egpym5.fsf@keithp.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=h98ncCno;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 25, 2021 at 10:24:18PM -0700, Keith Packard wrote:
> Kees Cook <keescook@chromium.org> writes:
> 
> > In some cases, use of the flex_array() helper is needed when a flexible
> > array is part of a union.
> 
> The code below seems to show that the helper is also needed when the
> flexible array is the only member of a struct? Or is this just an
> extension of the 'part of a union' clause?

That's correct. I have that documented in the DECLARE_FLEX_ARRAY macro
itself, but I mis-spoke in this changelog here (the uses were for "alone
in a struct"). I've adjusted the changelog now. :)

Thanks!

-Kees

> 
> > @@ -160,7 +160,7 @@ struct bmi_cmd {
> >  
> >  union bmi_resp {
> >  	struct {
> > -		u8 payload[0];
> > +		DECLARE_FLEX_ARRAY(u8, payload);
> >  	} read_mem;
> >  	struct {
> >  		__le32 result;
> 
> -- 
> -keith



-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108252250.C1DAEE5%40keescook.
