Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBR7P3KEAMGQEYE44KTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA8A3EBBF1
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 20:19:51 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id o5-20020a2ebd850000b02901b783135369sf3472912ljq.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 11:19:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628878791; cv=pass;
        d=google.com; s=arc-20160816;
        b=QjsWhZ15IxIgkM44h8ANq+9654wypwJMjpIXL2ZGOIsdjtJE3o+tTb2WPiLseRfjlo
         m3P3M62gx/OCXc7DUIhnQQ6nqDtzOUZKDg9iaDUh6nhMtPhAdPe4Wo8TJyXdXehIrQg/
         Aa3TsyKOdR4A7nw4oaz9MkOnq0T7rIxaJdCeAzX1zgy0AvSAD1/DvrOu8b8gy4p/Byj0
         GxsZLXzMxz7qN9F/XmIjlvfNQNA7EuBjd+PlrTRNwgDNF81cILP90vcBRjxOU3vF7+xc
         vIMjiFNUXWJ3V6JuG/KkRhQIinQ2YRmRYUBDS3ok0NPgQQa+O+syDDLZkJggPW38CZVx
         X2lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=mKso03oYrE8UzFipVqWQrzDZ/geQgG1kO38JKLO+El4=;
        b=crEp203VHmUkrFNR3CtYz+SVlYxruHUU4+tSzsq8sK4vxMlJlUQ8Aiz2gCIkn8nr4+
         7O/EcNFQoL5CpZ6HP2RC0xJlXAsCPi1jf2hst/Ln2e9pgcbNlj102YHKvgJQJgPb7Nyw
         n6Mj5FYqGEJ5yWN7V+/SBRkQfB6faSCK0qCTQH6l9q0FnmvWj64axmLoOPfjjQHQMSDd
         J0Ks5AMLCVXbRmZh4SJBPL4GxuCpJUL+GnrNKtMEursaLktiry9z29JySgi7DwYzOx+W
         gji+6t3IWQ6tbvbuZyaxZOwXNqy4anGcPYiSgq32pdUvGAf8+PvDi2u5ANVLUFjf4uJp
         9Xsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=uBj14tUW;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mKso03oYrE8UzFipVqWQrzDZ/geQgG1kO38JKLO+El4=;
        b=V/YccbUMqpuBSW7pVrUx2/vZfBMlXuhW16KRWsLbOEOnu1TJqzK5U9t6Yd07FuFeuv
         qwTHRG5teFycBTwpAQWwva48k9TK/9Acak5IggVdGNH8+zK3PvsbRekpWgtK6lBTSpYt
         eqWFiCA8nrGw1/65XxIkawONzB5ClC2H+SjzYOugnTFO6T6VI0Z5yNgY+d7QPzRY1oKd
         aNu4/l0mlORS3AHR+lZ1Inj5AFpbjGMLYJB/aryPzQBwKSS08hHHajXB31DuDLKJhLdp
         k0cr8uEGoUCSJ3xydTrxFXhbwQZwtGQxkqX6aT9dA4NcE8R1GnfalL4nTj0b83SYrCAF
         xsvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mKso03oYrE8UzFipVqWQrzDZ/geQgG1kO38JKLO+El4=;
        b=gem8JZ2pKcxYyJSn4gzA9shajSH4VfAap9+FS7eTfB41i4gyQ2YWmiZFB18tXKnlcs
         Ucu1gdu0/G7ZJCq4lmYmlbtko/e5NrzMw3lZc2o0q0DiBbDecevrKSvkn9qsTDkgE19N
         wN7jXSG7CdJnh/hSFvYcLhJ3lAzLn4fMlKSd+jVKMrhFXKoK+9s32EqoXb9K+hbABfHw
         ep5uERf1wzstr57Alr02/4x6j5efexy0+QGESi2qZ1r6XDCF3EHd7TQjKk0CagxN6+ih
         G8RInWSIQUSdxFDf0EmBL5kqreeSplV3IHgKS1l+GAaTF7UeVthJvUXvUCGoD3N0w1NR
         syvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532J9euu2k8htBCGYdebg6CYKgUPOIr++/eMjbP6mU/v+rKZCT6f
	E1l5MbdybypkJ4SCXNszBJg=
X-Google-Smtp-Source: ABdhPJz4sIK50XNnP/u6aCLGrYHC8ytI8n/ZMB1yRd4ZLaTArRL0KJ0hyIFB0/hReeKTfh/IlNRdGg==
X-Received: by 2002:a2e:a22e:: with SMTP id i14mr2671921ljm.505.1628878791404;
        Fri, 13 Aug 2021 11:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:691e:: with SMTP id e30ls589163lfc.0.gmail; Fri, 13 Aug
 2021 11:19:50 -0700 (PDT)
X-Received: by 2002:a05:6512:519:: with SMTP id o25mr2498386lfb.590.1628878790430;
        Fri, 13 Aug 2021 11:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628878790; cv=none;
        d=google.com; s=arc-20160816;
        b=dqoMT5Dn/tD8aiW8onF40fkM2y0ab+wdQ1qaf62O+o4KaIwtP+Oc0ajjxwCV0I+sPD
         JHKN6DTKwvgxNV/Zc7ADCoKGzdZfb35pbNb629K9/Ce40BmMURMpuzC2L3B6vDtVI1rN
         fmRMU62Zu1JWLJ24idaqitUtJPqnM9mSypnU8X8/8w1awWSDXV4U8wSt5S0GpuyWB2PZ
         Mz6l1iwHcShHQbhOyHk7I/mLeMHOywY8aj6Qo608QhEniZUwAepWm6zNNyCG59B/8PhF
         ovllNSQNutY4Y7et0tTumYe1UdFwj/HUWviNeVL2xJBO1gEGZUqba5bzVtB2q5UHjhQN
         5zHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=rq6VfTjLJfvWeGU0hw3GUv7MRF3dGVPTx8dKGrBFFlo=;
        b=mfiKzz47FClk0o7HKOyTSTobAGVaEScOYjPhry45nX2eL3eFRnPX7w0Y6LV+1wzQcy
         Det5Oj7xBJl4HjlrAHpANdbE3cIT7+MilRUcAxr+f8ZOz0bvZOKFx2fqTfKF+yovlO5f
         5/sVwM6p2hLIG/il3DpggS67ygF2x1BPnR5+vKJBhzFCy2uijm6z4Fmo4dfwmSs9K3na
         oF7eFcK9ATgOOUk2P/8VVNAluJkh4+Hd6jUQQ5XJB+fetlyZ3Yq0n2htDTFeT3OZD3aZ
         mWwcf+sXP7hLQLsNKNVEf0eLQ4QIaN/uX7sC2OCPSFHbC7e5YOi9OaT7bD5ogYX1y5mP
         jNvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=uBj14tUW;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id x17si115362ljp.0.2021.08.13.11.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 11:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1mEbmM-00ALlG-5g; Fri, 13 Aug 2021 20:19:38 +0200
Message-ID: <465daabf002e098f0a24cf07f72a69d7e20c7440.camel@sipsolutions.net>
Subject: Re: [PATCH 39/64] mac80211: Use memset_after() to clear tx status
From: Johannes Berg <johannes@sipsolutions.net>
To: Kees Cook <keescook@chromium.org>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>,  "Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith
 Packard <keithpac@amazon.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
 linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
 netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
 linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
 linux-hardening@vger.kernel.org
Date: Fri, 13 Aug 2021 20:19:36 +0200
In-Reply-To: <202108130907.FD09C6B@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
	 <20210727205855.411487-40-keescook@chromium.org>
	 <202107310852.551B66EE32@keescook>
	 <bb01e784dddf6a297025981a2a000a4d3fdaf2ba.camel@sipsolutions.net>
	 <202108130907.FD09C6B@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sipsolutions.net header.s=mail header.b=uBj14tUW;       spf=pass
 (google.com: domain of johannes@sipsolutions.net designates
 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
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

On Fri, 2021-08-13 at 09:08 -0700, Kees Cook wrote:
> > 
> > The common helper should also clear ack_signal, but that was broken by
> > commit e3e1a0bcb3f1 ("mac80211: reduce IEEE80211_TX_MAX_RATES"), because
> > that commit changed the order of the fields and updated carl9170 and p54
> > properly but not the common helper...
> 
> It looks like p54 actually uses the rates, which is why it does this
> manually. I can't see why carl9170 does this manually, though.

mac80211 also uses the rates later again on status reporting, it just
expects the # of attempts to be filled etc. I haven't looked at
carl9170, but I would expect it to do something there and do it
correctly, even though old it's a well-written driver and uses mac80211
rate control, so this would need to be correct for decent performance.

But I guess it could be that the helper could be used because the rates
were already handed to the firmware, and the code was just copy/pasted
from p54 (the drivers were, IIRC, developed by the same folks)

johannes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/465daabf002e098f0a24cf07f72a69d7e20c7440.camel%40sipsolutions.net.
