Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBDWMYL2AKGQEOT6UHGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3B91A48B5
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 18:59:59 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id y1sf1562351wrp.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 09:59:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586537999; cv=pass;
        d=google.com; s=arc-20160816;
        b=mmrAhFhYj2/r2dxyW3WjZS2/xqpOAgf4BZC4ur/YFiifzr53rIZ+hCFr0G6fqkJr5Q
         zUQw4rZgxOxDHZx/REsGHWUHFYMFannr1+2Rfp2ilE72zh4BokVkZJMLGZLs6OxL4Vwl
         kW3VSCnEWECeOgXfhmn+ubKXMVEO08d+ryXulqIXxo9nFzy+rmDYEJSqfAAKRBUKYecQ
         zdhSmn55X6snsy21Vp6S+aWQsVve2Ot+61FphiDiXgGgKxp7XGaESjgZnCZzw+cSEZiR
         YwdeQqFwGFmC7hJSJvNu588QTHOaeRz7N4VxyjVzox39tmWtWe9HOZJCJ/BcPYBlRLYq
         0+Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q3YDhUCVAP5eARhekpvZ1G8tyhtIL3mfpzDz53e0I6o=;
        b=MAlqHKWW4HkBXnnALRsPCOJVe/TxZ5wnB1Ly6lY2dKvODBhJ3wTYi9pXBGKl5jW31c
         ne3soCmCK/WBJrdAfmYpZKoRAXwtMc64EeUny9ZJC2w522Ehgzzjt2KlGSue4dvZG2en
         RwMxNr5Yt4QhQr3NQiEqIqUgbjOlAZkYDwBztnMrcf4ZgVwBOu4qFIY45rxIGAe9YGMJ
         r8qH/OinMpPHIrUpyrMxoTjmdCY2ixqM7/BrpioVBUMEkzZwkmm7SHuKcsTFv0kkXyZo
         0PIEuI5ICH4xCnzQNm4hHC9IBIc2+8zZ2UvSjFIzTIPbI0d4DfMGhpi4TesP4YnRUw5s
         2fXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=Gug0M9Uy;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q3YDhUCVAP5eARhekpvZ1G8tyhtIL3mfpzDz53e0I6o=;
        b=m3Wh+Eeic+I0Pb0OBC0m5wvFTaQOBk3IlVFQ2sx6RIfa3lSIdsGtakiVJKYbMi/dJU
         z8k184Zs/YMyMz6zsydai/tdQfxNIHrS/0NWtd0FkvjyeeDoyEyKHTC7PnsSP2zwKqOb
         1BbvyiPm6jjQkEc5Dw+Sk7r8E5eDXSQCw9UR4ymUoJduMwbVj6So81IdFM9LnzPy+lad
         RtSZMAg3hIm+0J/qJOpzHqVnJQHhox37gWtLhjQ84N8oBc36GEXtK/QvzaAgi4XXOIv+
         G7SwyoLIyLZGY7Iyh5v7+P1ONWV+0/k2J/mt4trXi4VqYXGDwr/f7rc9s/mjX2GiPtGK
         XRfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q3YDhUCVAP5eARhekpvZ1G8tyhtIL3mfpzDz53e0I6o=;
        b=nyqGjV6CosDMMSRgvZfQRnHr2FXoteyDSfKIs+W5BA///6dNvCeesicvGtyF7Bcc3P
         61Z21R0ufer2PvN6u5+kzTBxjIpa0p/4GBgh+ihFUd+7xyKRWBT6LdteerclzoWN78oU
         5rAUuskLmL9jceZpn2QJzT0OELJpF3Tkw9QlBhRAiKx2HneNHCI1XF96BVF/iBO0COs6
         TPEfKMSSSuzYKIT+UGZ3ikNIZSeOPCNtOJby0jCW58dmKBx/kc836FGXaGuabhJ5T+Lr
         cYhQHS26GuILWqgRG/HU8Y8Pey3042IDQhw9az6TciLgFTku1Xo2q4SLRcC2pzEpaOAc
         6n4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZyG2YeWp5TWtFdvlsOafIElczDjfkPuT61ncqsq3TuIQtpMqqT
	SdHTn77CsEyzcLFDhwo+ZVQ=
X-Google-Smtp-Source: APiQypKi2360WcfgwqZf5BBh2TMLpN4pvnUly8doS+dM+1ziFvsdWLGDgWoGIumQR2l/HY1XaRIpKA==
X-Received: by 2002:a1c:e203:: with SMTP id z3mr6174032wmg.71.1586537998952;
        Fri, 10 Apr 2020 09:59:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls11285631wrw.3.gmail; Fri, 10
 Apr 2020 09:59:58 -0700 (PDT)
X-Received: by 2002:adf:f5c5:: with SMTP id k5mr5879498wrp.403.1586537998283;
        Fri, 10 Apr 2020 09:59:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586537998; cv=none;
        d=google.com; s=arc-20160816;
        b=hCgVmgkN6ugme6SA4zwaY0jXmTRrQzBHCLBWP06MCR8cAavC0/N3iTKwyTx4zrEnd7
         0cM1sbPEH6tC9NC5/gQ9LIf8C0E2oko0v3fBuqP2H+/j1kJxpv7towKQMMKiwSYR6pRZ
         L3n3TmOrPvKrKBv8apecdQiu/cHupAocfWnLFCJ12eRvpVp3tJxC1AFQ35s4w+SyZhMg
         eLhsU0gn4/Gz5Hp2cDICS/E5buksWy8EGJRwUL+qsWj+RTqlaNfdYsRxbeaHbFouaNQ+
         jB8cxnyZq/1xnicffR81OjE16hY4TBzoa8Tji6ba3jiLs2kfp0NtSTZGqEQ4pIqwHU+o
         Hrsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oUKFqLg3+HDFm2vs2QWf5wGOnTF90+YW2FpbPNodGzs=;
        b=aBJag3/zvb4h1olvt/CYXaa6gyq4qyhPeI2diwhUby35CiwDgQ2jhDttQDKqSFqpxx
         8jsjutDBGhsv14OvAsXTzFXsjTqsHVcZ+R5A9n+pDnsqM4n3D7AkO585tSIyXg5xJVZ1
         A82u+BAVcr8FOWFtLdttkgfDZt0//f63eFV9jE8OlZpiqOZk8hw+dSv2RDeKAGkr8yml
         KtuJ7Iri5tJPKzVj76ElH7OhwxzlWOrz3PKtsf3BC/JBzqPcsHBBGiKsZo1BrlbD3zPh
         UYXo2oTeHtIhSV1Wjbh3MGabEQ1fbgsRP8jyyr4kU2t5lhWIpLdzlYRzKVjVO1wpEHT0
         +gkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=Gug0M9Uy;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id g78si162156wmg.0.2020.04.10.09.59.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2020 09:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
	(envelope-from <andrew@lunn.ch>)
	id 1jMx0O-001zrZ-H4; Fri, 10 Apr 2020 18:59:48 +0200
Date: Fri, 10 Apr 2020 18:59:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jian Cai <caij2003@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter.Smith@arm.com,
	stefan@agner.ch, David Howells <dhowells@redhat.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	manojgupta@google.com,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	clang-built-linux@googlegroups.com, ilie.halip@gmail.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	samitolvanen@google.com,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, jiancai@google.com,
	Doug Anderson <armlinux@m.disordat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	linux-arm-kernel@lists.infradead.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410165948.GD448831@lunn.ch>
References: <20200409232728.231527-1-caij2003@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lunn.ch header.s=20171124 header.b=Gug0M9Uy;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> iwmmxt.S contains XScale instructions

Dumb question....

Are these Xscale instructions? My understanding is that they are an
instruction set of their own, implementing something similar to IA-32
MMX. 

Would it be more accurate to say CLANG does not support the iwmmxt
instruction set?

	    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200410165948.GD448831%40lunn.ch.
