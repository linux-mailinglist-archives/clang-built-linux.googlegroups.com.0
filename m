Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBAUCZD5AKGQELP5MC3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9337925D401
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 10:55:31 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id s11sf1616287ljh.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 01:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599209731; cv=pass;
        d=google.com; s=arc-20160816;
        b=pwhuE1opzvSnX/x349sIxgjFcLaObdnS6z/n/LolqGO+ibVTajb+UAHQip80v3WIla
         +qUrtjQbVF+rNTTi6uFWY2TWPg0wctQxFwCpBQQ3/UBgF6m9Iu5EdncUgF4fvlB/cEcJ
         uXwa9TzpUG2SjCAvuB3p37aj+UNxb1/+Hzcfu3hwKRZtfnlSyXSZQVnmK+ZwRHDHaeJf
         eb6gK1za7SrfOico2BAYjiaHa9jX+htjhlAfI/ddbPI6O0nRHWzv9HBSjvISwMyX0mmY
         ePn/d3+Ro6kGsEO4C35u2xcNYPHQCvtJ1yed9FLVKqZ4EOxwdjyDNEArzVhQk9Z9Jq3d
         9jjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8iKJw2UJGgqThpWOYVr8uGuwA3oMjMzXDVmxbM8XPpc=;
        b=GlpjhqILzA+INlS7Wku8daDM8dBk22bizPhz1xGluedqbEp8LS6IQfDMq8nGtCGDfc
         WTJwW4v3K4ZyzXY6iCcRVJyBZKIl6n19TeiEnvboNKwU6tw+Ii6CxBJxVjzW4vm5IECS
         s8pqWk9xQwxBE5zlVvvYVzcmbbjdpf62dlEuBTOA40FiF6WaidEeS1fMhya1Vj4LxcHw
         xUpMPDV2Zaa5LgYsTNIWqO9msGEBkVo4jdWfPMB10W9Ja6y1sO+K5bj0GequjVNgXu6z
         UzS9jwKk6QDBmrVi7jP7AydFqsNcr0klLzONHi60QKlR/pb2lRvYdRuu2kyw3FlRV4nr
         OJyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=O1Wk6g+4;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8iKJw2UJGgqThpWOYVr8uGuwA3oMjMzXDVmxbM8XPpc=;
        b=Ag5G5diwiCG4CWGYRfZPOydXMbLpWiseFpZDNFIezWEdjeX6Mp9avGBIAvdNVWDzX/
         wC1Wk6UXcorNnp1Cg5/ASEwH/X+C45aAk4bhhWMNjFYaKJtrsVWrYi1kYrhUJTkvaGbL
         Hng1Zn1LBrSk4X7+hqwDJg8yEIHpbMrCJ8e/gPlwbvqgNxgvM/+g2gbKIyvM6nL9pLFF
         yql9eP1e4uxITK8v9NrI4zR4tFRKHtQ02gNzZu6DUOFaok7cFWWqbY1hPo4pJkHB4ET/
         cfse20gQaoNNBrf/1OLzTDbhc04lXQX26vyYXcEVXL5rJw2SwzqZVYQ7qWcgVFwmKN15
         Mtxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8iKJw2UJGgqThpWOYVr8uGuwA3oMjMzXDVmxbM8XPpc=;
        b=hcRnMv8KMK15h9faTaQKVHVK1Ictby/dmuv1FJyx330vPI6gZzaq7hBS4/OlksKPER
         5c6dtejrDjzhrYzFTkyxcqWjZK2oDLp3EZRxUJR+Lwg/lKAKm9jGKsNmORoAxGlgGMXy
         sJUMBdpQa70NpVfDhD6TVCGnLswHntOVx1FfgeZtzDLKrJNLMZvkhrsXbupcY0CGAcyk
         ExsHy0W0wjwoWdapPpxYbma52UbwF8SzmxA1CGqJEpyyXEEj/JGwfcnXzKcaE+d11kRt
         jH+nUYCoGttsXXZUHkV/xLeNhFqNPrP5ewD5hEqVwayppOfQY51RvJsJzml3px0owo9s
         VmkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TphnA4ndZZuE7IXfFiS3k6OrsOaukXckuPkPnwg+ANQnYBOdK
	27Zsj5mEF/lCYVKZKQyXf58=
X-Google-Smtp-Source: ABdhPJz5w0N8ydRRsjwlxLSJz5tGbmspLNf5pY+je4qbecvFeIID/M43k96xrQIqBbsks38nVKDhtA==
X-Received: by 2002:a19:915b:: with SMTP id y27mr3385102lfj.134.1599209731053;
        Fri, 04 Sep 2020 01:55:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b1c5:: with SMTP id e5ls1757929lja.0.gmail; Fri, 04 Sep
 2020 01:55:30 -0700 (PDT)
X-Received: by 2002:a2e:b0fc:: with SMTP id h28mr3515686ljl.114.1599209730287;
        Fri, 04 Sep 2020 01:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599209730; cv=none;
        d=google.com; s=arc-20160816;
        b=ssZEmmpCoPee0pdU7531hS3zN2+vKjaIKgb/ozEIbFYmoY2es6ubOA+E6askkzpF33
         Rcld3zIqAenE4P9/Tt/BqjPBWoN843uC666zF1ybPfwXs33Far5su0pjx0y/hKprsFIH
         CPQ9BSeXjWniW5XzwBqMYn4wndcZTzCwHiRPL9MSH76OIb3mP9MH3tVRXkxPB+wBL7OO
         XI3oc2B5pCRr7I+RwtPGEeWsIK6HXloa6y8Z2VBnZDfcKGe0j4AFq+FQ7ZDY1MpDEhgb
         8Np9pWOsEe1Guol95a0ufFNzElPmly9jPMjhCPrz6iT1ShLs7k0BEjE8Ehlazd+n9SMr
         +dyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6Ph7JbkbFaoWfq28ICsly/8XMu67nEPXs5Q9waIv3f0=;
        b=uQHLnduCSdN7wMoNuSe4EaMl98/ebUQxYmUONWudg4a0e4N7+LF6dwv4Jf/MniO7ZF
         7ij0ByERelsOedRt2YvHfQfVtK/qhRYdpJXhejK/F3+EvmQ0ZjzZoJZvuy8cdP+BBNXr
         iubS7UrBJ4YWM0j2s56Hh13VSv2eOmPLq+M866xbp9Nryn2+/yF7vMcRn9+X1BS05gKp
         e0wZ/1AODyakE2djDBnZg1qPozafsM/lgfqRGlCPjaug2zr4X0pweZWi1GID0repEioc
         Efap3Ge7XKG3MOnPmqBk+/F1lnmjfN8Qfw4F7IqdGuLG4EJqP2d6X+QCPdL3HLs8hL0l
         aAOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=O1Wk6g+4;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id k10si190895ljj.0.2020.09.04.01.55.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 01:55:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kE7VD-0003wl-6w; Fri, 04 Sep 2020 08:55:23 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 95E99300F7A;
	Fri,  4 Sep 2020 10:55:20 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 7A4B12BBB68A3; Fri,  4 Sep 2020 10:55:20 +0200 (CEST)
Date: Fri, 4 Sep 2020 10:55:20 +0200
From: peterz@infradead.org
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
Message-ID: <20200904085520.GN2674@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=O1Wk6g+4;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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


Please don't nest series!

Start a new thread for every posting.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200904085520.GN2674%40hirez.programming.kicks-ass.net.
