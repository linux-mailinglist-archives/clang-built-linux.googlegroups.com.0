Return-Path: <clang-built-linux+bncBDJI5MPT4AIBBZ7QXD3AKGQEHANS76I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8BB1E3E11
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:52:40 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id a11sf5368446lfk.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 02:52:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590573160; cv=pass;
        d=google.com; s=arc-20160816;
        b=OAbYCql464n7ID0g0PHcyJibc3mytDxMX2nofQJuWRZDRq8PRnQ362FlJ4U4I4+OWX
         4hI5yn3kKY3ABx6HZHYdE/TbbUC3lhV/LA76rrzpYD7rmsQXp/mv4HMcNPc5Kq9+D1J1
         S/5JNwxAeAGS0ErZ0bPWM0+LiYsiGz/VcfRgyoUztq5eleSaWv5+C2kHHR0Ew+PZpxhv
         Q0sRbt0Mo9AkcB+aKPHLwVyn3H8MmG4IoDvcN4WUO6qJoVhFIzqSD9ZSVBu7DOng6Gm7
         obik+OOyDjoDq2LDoBtNubQo5KAEagLHOgvI87rB8UC954DVwIRNJK7HPNt6/N9feGTm
         LHIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ph7cT/KaKUqBeWp4OImeczZUMI5PZ4aKcKeQ9xkssUs=;
        b=fsfYyCBauaw8jJ40qOvBX8cEEzUYvdTNGJQoH9RTP0x6isvDRPWoiCkLpCE7kWdPeW
         B9B+qoEp15Z8z8F1rfGnnYgWTVwlUCWfkslLXn9ZJd/bGqr/G1cL23DbtWCzkyLrMbCf
         dgYpHzRWuKvQPkJr45gVmmodgwS5HaPcUn/rOokFJeTXRZ9CTTSo8rRcAtaGQG4UPFQw
         G9XFZMJR4MsuMQYWcWSHuNI2XL0k/kUq4NtOR8v8zzLPtXWuyqDhSpGAFAkT5u0aoqN9
         hy6IdDz3DE9u1DCeQ7QWV2KHNcjPTthHt7NaGqipAG4/BBnRaiMPd9AAVdVi0GINeQwf
         jz5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ph7cT/KaKUqBeWp4OImeczZUMI5PZ4aKcKeQ9xkssUs=;
        b=XJuAOX5wWhSfW18PeiyUUSPavkIb/6IQKdzRM4pj22zsfkHdKa9Ge3y0Dr2hizgneB
         Uq7IOzxetR3hoLqpSyJXVegUOJwA+StI/E9buyLSN+B+Zurbhui2DjEIp2CNn+aYver+
         992uUnidVQtcxdU5PVFKbzRS1vQ58VHIkSuOMLHOxvWrN3D4nQ2WY4+mQLgogdcgeOdh
         R8WgSfOKQyV+UK535lii4z++olei5cqCtRBVIKjtpMk3sC2NVW7iunQ2908Kn/AUehIK
         cnlyovhHZ/lpySQOvf2EYCArIlbHXumXHxswD2d8MvG1Ag480C6paZlLk9ktPv75tMaQ
         +5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ph7cT/KaKUqBeWp4OImeczZUMI5PZ4aKcKeQ9xkssUs=;
        b=UDI3I2z8qJFwREHKQ4EY1kpLV39CQNrdvf7VnY5/yvSqzyiWQMutyBxuDb5YGFrT6L
         qgbVYuRqEpLR5l3jQIZceGatLQXAxjOT2RCCEmIZwouZ7e/h6EIyhz2oycihGrYvySqQ
         /GP8uD2tcXIoVsm9GUOt3NOAMtrRyP1L57r6AKZouH96+3Du2ZbORWXjg49jfEjpyptC
         Wgdh9Nbul3y+MRLd7fbw0dZjcXuQd5mT04SOhQBz+0nWVuxbP95pn7XTGVECwQ/5rLhZ
         ODJ4FekK353XWF2B25wKC7YCG1hDgtNdAU8PsCqzzBPGqzXS2Rl09T5bYaIchhtXEw2P
         8/uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335/eAihjfdD6kRXcb4cdV0MCoTb3K8ym2DhAsKXScAl3cy+vJj
	1mPaBffUu6O/LEwJFNFFl+M=
X-Google-Smtp-Source: ABdhPJwWZlTSeV3a4Xde1zAjkNJsCJ7MoCs1Fso4wVJSz8tuanttyp6qAPtM80azbuaNHhT7zuJA0Q==
X-Received: by 2002:a05:6512:308e:: with SMTP id z14mr2782188lfd.29.1590573159960;
        Wed, 27 May 2020 02:52:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4b43:: with SMTP id y64ls4089789lfa.2.gmail; Wed, 27 May
 2020 02:52:39 -0700 (PDT)
X-Received: by 2002:a19:4acf:: with SMTP id x198mr2740387lfa.129.1590573159254;
        Wed, 27 May 2020 02:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590573159; cv=none;
        d=google.com; s=arc-20160816;
        b=OB+yHmLvYnPHVkEx7bIO2yJmlHoLXr4AezmfzxlCl6BpiWQGuImAT7W/Sm2cE5FHZW
         kavYhriokFkx5aLfQoK8R3hp6wgJ3JyXn1r7snf0Mmuiaz/52mtCe1gvxqFiCdittJcT
         PD1eemsMCPupZ9DAaXlbZS0EiVx1SrPIzOAdYGye5Ys1lhMwY9r/5SjR0oD7RdJ/egII
         a3Acx0ZnNU+qQ/9udfhw9lgSuB/BAacUlTkI/bsSGmORXf0Jhv7x7k/i9/C0c2UTDwf7
         TMr6hM1xNu/4ptRQVNN+QfNkOXtOpwqM7/NWce4B313zAJtw7ZP7hhomjiL/hHPzsn0v
         Wwkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=hAkIUBhCUQsjpEdWZaRSsocQ4cL/BT1H9QNU49HlPuc=;
        b=YraEi/7yAmJGXUqEW3+ECHD07ZnH7e/WfMyznFT29iQ3UQcI2kF9YPbyrOCuAMraSC
         TkPYB3oN5lEhI5KIMwy7pgdoCa5hhXuysQBtZwJG2o5el/CDmEuWtUxJZ1h+T/E4BvB5
         awdE1fT8/46nEPcTw8ELifkPeSjSLv64Pj3CAqCHU4NY4UCM0p+ux/tidBNcriJv3P02
         P7qAAkb8TIOCwc65TKCBzL0HSDjN2hX/VSLEYjvDBnAoGAlTYEs1PhTj9dnq/ksvhnBH
         ChbcVwxY4ZnnrRMd1v1FIo7GDgdrqrh79Dxf+dW96uSBRS0f17zSe/8GKFDE3Mb1zRBi
         6zRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
Received: from mail.us.es (correo.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id x25si152887ljh.7.2020.05.27.02.52.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 02:52:39 -0700 (PDT)
Received-SPF: neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) client-ip=193.147.175.20;
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 3974EF23B7
	for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:52:38 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 2D3DEDA71F
	for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:52:38 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 1B9D5DA716; Wed, 27 May 2020 11:52:38 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	SMTPAUTH_US2,USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 2AD4BDA70F;
	Wed, 27 May 2020 11:52:36 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Wed, 27 May 2020 11:52:36 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (unknown [90.77.255.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id ECBA542EE38F;
	Wed, 27 May 2020 11:52:35 +0200 (CEST)
Date: Wed, 27 May 2020 11:52:35 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net] netfilter: conntrack: Pass value of ctinfo to
 __nf_conntrack_update
Message-ID: <20200527095235.GA399@salvia>
References: <20200527081038.3506095-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527081038.3506095-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 193.147.175.20 is neither permitted nor denied by best guess
 record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
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

On Wed, May 27, 2020 at 01:10:39AM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> net/netfilter/nf_conntrack_core.c:2068:21: warning: variable 'ctinfo' is
> uninitialized when used here [-Wuninitialized]
>         nf_ct_set(skb, ct, ctinfo);
>                            ^~~~~~
> net/netfilter/nf_conntrack_core.c:2024:2: note: variable 'ctinfo' is
> declared here
>         enum ip_conntrack_info ctinfo;
>         ^
> 1 warning generated.
> 
> nf_conntrack_update was split up into nf_conntrack_update and
> __nf_conntrack_update, where the assignment of ctifno is in
> nf_conntrack_update but it is used in __nf_conntrack_update.
> 
> Pass the value of ctinfo from nf_conntrack_update to
> __nf_conntrack_update so that uninitialized memory is not used
> and everything works properly.

Applied, thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527095235.GA399%40salvia.
