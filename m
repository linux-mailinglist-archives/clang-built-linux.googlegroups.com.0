Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBKWSQGAAMGQELYRG3ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id C78572F6537
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:54:18 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id dg17sf2295066edb.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 07:54:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610639658; cv=pass;
        d=google.com; s=arc-20160816;
        b=e1KnfrIN827r5fFsfq0rjKh5YSx8w+HGH4Ojse0eQ0/WfIVWNIjb/7Tr3rckr0VHZE
         GfRpJqq8eveYzRE9tJjvnWdnNy6SoTBS5J3UDASlNGOsJoYFXgA2umJaAyuf8OF+bvhV
         D6ZuaL4Dior0fCE8pDwHU7udtAqEBBQ2NcjIT0QBeftuaYYubLp4mf1jfsUfjSVrbZNL
         f9ihkkMJpfLLJnc19E74LvpjqY7r8VWvlCAE0XiEvHjJLRvV0ewvxjdXHSaG3HIFDMQm
         Gpfuairtj+YAc+atmvi1emSXzmkuicN0C6DCOp1ObWvxzoJSn2d4PThP4qZ8VJ2xshEh
         SM6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fcmVv8NCm/4Xwqi8zo4OetifvJX4q32fqeh0NkyVNn4=;
        b=Bv6ANLK+tlic88KWgjUmhLPSX1THkTnukah1CXoKDshC7S0YZyVxmJdMGCo44i3XPX
         D+xN2fDMlyFs8Nm0HUyKVprWkgcY9d7tubo5SHXG7skIej7VA/FwQrby45H4EyU5WA4b
         YQ3aZEN/8H6KN9IcSFWW7q5JvU0mp3suOyEAkpazBxYTtFUBZ0vc/9ITjyJMhfI4c+54
         6wKqacDfemWDOqTdpv20IzsaGApS10EamfG2kDRGfLp87hmSHuKaTFlb3ufSyPmmuAUJ
         DkJgMmlpJMm9hx0cZeL9Xh7cc47pIYxp1Fdvm8tF0RZZwGcxYS1Hu4fb/2E9OsGzxm+d
         urig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Z7qUy0kl;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fcmVv8NCm/4Xwqi8zo4OetifvJX4q32fqeh0NkyVNn4=;
        b=Bf7CkT1M05V+Xob88b8SqAdXx8mIh2UHnuAuIHB/M5qU6WQtm1g99w3PDV5ObgeOwl
         3iKUW6AX2e/OrugURXAjeuKlFWe7ExRCvjC/5Wzxzfp2cDmO4juS1PYlgZuxihRLDM4+
         uc06FHruuyqrgTQ4j/IrC07WC2txf1D9Z8rdhX1K6sxEAAAFXaVoSL+DwIDyd+qtrfWZ
         IorUdtlv/0O5bbuiPbXZFbRH2myXT3Cn19yotF07dDcNjT4WjksMZmBSJrO4KpiRzEMQ
         AzT2iOOGiggABoK3AQ36voiWco+Z67ZMIngCnUHxrKp2Tx1jdY12NSAAFSJzOInHHptM
         ws0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fcmVv8NCm/4Xwqi8zo4OetifvJX4q32fqeh0NkyVNn4=;
        b=p74vHAn+haujHRXByQXas12ao5MzwZA2OftWUwfQrtrWwEaM/r30cH2yOg9jMYPW2U
         fQ+gPzpeoAmq8s9MnPrCK/iZex55eKwQ19+8+vPvY2ND7/yw5YCAkA2RmD7QClXQcnEz
         vPEid1h2/7Kkur/WB6CORddV7AN2THeFfvfJmf9K38aRYgoGCnPv2321dNO4ZCiIrHVB
         icXi4QPCQ/jNzK8IUN8Kuliaja2qlLH3qbFENIIDHGvsFL/oS+7kIS6d56memjCw2XAX
         DIAE6TpEQc8MQ+ESJjC9befK31y4+rJn8ZoEmhtpfbUDIvdD+RtkVbOqOdkrY0QdCNMR
         Hzww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313jTKQeXZD+h2we8Wma+tgWe33tuXYc9u7l+nKZXgQE9sDmep/
	E0jwMw4Mfg1vPkDdIeAedHA=
X-Google-Smtp-Source: ABdhPJxUQuTj9kMUSf41QcmW1+LxbNEiwKxorDukMnBrXc4wFIw+4YFWQceu/YUPeAUm8L8Ard0WVw==
X-Received: by 2002:a17:907:9495:: with SMTP id dm21mr5711890ejc.462.1610639658564;
        Thu, 14 Jan 2021 07:54:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls633670edx.0.gmail; Thu, 14
 Jan 2021 07:54:17 -0800 (PST)
X-Received: by 2002:a05:6402:270d:: with SMTP id y13mr6217877edd.149.1610639657727;
        Thu, 14 Jan 2021 07:54:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610639657; cv=none;
        d=google.com; s=arc-20160816;
        b=KEeD73nC6AO4cIP8CKGPZmyYd4yYRwEGP5c7UjPqAC8Nj4LATtE7Zpk8gdE574w6OG
         qJFLMzMFgBPx0oCoA54kgX5OKrLq6JYOTcqpj/GK3gXlxOErDH/dKUxQHnND+RgqH5Cm
         L/KS0fyXC0J+jRK8s/X1V5e90e/tov0LwP9SP+5fp2xFd5sio5oovfPljuRyNKDBcqu0
         t26tTU4d1WXDEk2UWcDLWX0BwjvhbE3tP0iuqKU+d9kd/DS4q16oSwxGqkPyXbMUBT37
         5lWJrHUbMer7r2B4oEJ/De+iUM2yTAqn5ZXSzkJ/4ZkG5c5DZSC5IqkxcrWmM+58hQXv
         m1RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=c2nISwHQ1sx1QefEbT/WP5EtkYbOPh92hLF5ZFROw5s=;
        b=Dxz/oeP4Z17jtE56NCLZsy1n+pvl7NCIL1z7yQctfBl/klB2uwftPWBoW5lMtxAkA3
         BVlmp1DcwMygrxl+NI/K+6J2sRy6/KVGaaZzgJxbTn4e83pkhFhodTfHWMkZ6j3Ncph1
         8W8hMd8XLf8cZMw6WwTSPqNFyjvCETZvVpMdPi/+HfBYRUvjLj+U1b0bZQqtKYtN+uYG
         2R/w3WD+U6MphrJbFQiyj1pt00/kzpe0VOaWkjcyDVXXS4RKpZN3adSZA54GmAd6Gt1x
         hqolNExwlYUwyj5cXhIpgyZcKFlQO7528nxW3+SZWmFtXB02rPeaF/iDlhtDslnJ/Q4H
         hSHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Z7qUy0kl;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id k20si94065edx.3.2021.01.14.07.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 07:54:17 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1l04vm-007kuA-SO; Thu, 14 Jan 2021 15:53:22 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0306D301324;
	Thu, 14 Jan 2021 16:53:01 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id D5EDC20079488; Thu, 14 Jan 2021 16:53:01 +0100 (CET)
Date: Thu, 14 Jan 2021 16:53:01 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Mark Brown <broonie@kernel.org>, Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Fangrui Song <maskray@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joe Perches <joe@perches.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86/entry: Remove put_ret_addr_in_rdi THUNK macro
 argument
Message-ID: <YABo3bw8fPdjWZ+Y@hirez.programming.kicks-ass.net>
References: <20210112115421.GB13086@zn.tnic>
 <20210112194625.4181814-1-ndesaulniers@google.com>
 <20210112210154.GI4646@sirena.org.uk>
 <20210113165923.acvycpcu5tzksbbi@treble>
 <CAKwvOdnAMsYF-v1LAqttBV3e3rHhSFZmPcRRV0+v=+9AyMFgNA@mail.gmail.com>
 <20210114103928.GB12284@zn.tnic>
 <YAAszZJ2GcIYZmB5@hirez.programming.kicks-ass.net>
 <20210114132809.GC12284@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114132809.GC12284@zn.tnic>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Z7qUy0kl;
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

On Thu, Jan 14, 2021 at 02:28:09PM +0100, Borislav Petkov wrote:
> On Thu, Jan 14, 2021 at 12:36:45PM +0100, Peter Zijlstra wrote:
> > And while looking, I suppose we can delete the put_ret_addr_in_rdi crud,
> > but that's another patch.
> 
> ---
> From: Borislav Petkov <bp@suse.de>
> Date: Thu, 14 Jan 2021 14:25:35 +0100
> Subject: [PATCH] x86/entry: Remove put_ret_addr_in_rdi THUNK macro argument
> 
> That logic is unused since
> 
>   320100a5ffe5 ("x86/entry: Remove the TRACE_IRQS cruft")
> 
> Remove it.
> 
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Borislav Petkov <bp@suse.de>

Acked-by; Peter Zijlstra (Intel) <peterz@infradead.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YABo3bw8fPdjWZ%2BY%40hirez.programming.kicks-ass.net.
