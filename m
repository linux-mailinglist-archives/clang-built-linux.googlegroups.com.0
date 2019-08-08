Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBRWNV7VAKGQEM5J3FFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 491AF85DDA
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 11:09:28 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id a8sf60426513oti.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 02:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565255367; cv=pass;
        d=google.com; s=arc-20160816;
        b=yIB0S1AgoNnSaEWCkdK/TGktSKUYtw2Hh203N1Q8f3HOAtLtYp1UgPePlWvjs/IeeE
         5zB7BDiSk5tN+4q8zogiC3haUKsJkSI7IaJ4Ygi+kQrDjJwHyg0DKrCGzWvtZTT+jRRP
         2xiUsQPZgyLSyjQkh3IvKXPZSRnFUBblLYcr+1lX6iym9++c0Zg1xS19VRthZ7jMXnP3
         EypHvp+l8I6P3FHnLhNT8Efg8EvW2IzGnVGusuH6UdHiyb8ORCTrOpiV3YdmqC9ZkUO8
         3qTj1+zlGV8v5Jb22L8qhYQ+oTk2smvF3mu9NDnFgwsUlHAv+VAlBa/sijskBuknnJ9y
         3nEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5Fjjb+M2APJvOL6vId6y/9zmiROW8RHL45yQ4acgwQA=;
        b=mOFhqNfnOK7nkcTmji215NMDwSrOY9Vz82k8bFn7Tv8GhZNz57/LUTy0aptLZPllkc
         Ad5inz5A688i65QRZr5Rk7O9ppklR4RRiax6Yo1spmaZ3QzUGi4sfZHFHGyu3bvwMUou
         21z2gC6Qw0Klm9DUEn3zksoeE++/tKU96ZcdXCxiU/F1NfSXZAKTN+EBmrXBlVYwXR5/
         nY9SHXO/0i6/0dj37YfCzdImkpnxx0a0dtRExNRTGBjxR/q4b8KM2DO7Nww4Lmt3uOHR
         ux1q2GbfotyFcSvge8CE2p5SF0pjeB+WywhqxNraIrl+Sxi0ZD6k+Ey22szvOej6dVXu
         hIpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QoAMv3De;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Fjjb+M2APJvOL6vId6y/9zmiROW8RHL45yQ4acgwQA=;
        b=kGDViPX9wVMU7kPqMoAaZCN/lkK2Pf06zzMDZpfAAY94ltErL3QZkT4QahMMGKvsZN
         hlS8HIlCoaxyms91hZ7/IaJVXMhh+0SWpPOFaQlcUWQlK1NULbmOHRf/p0KCg4Paoidh
         Wxel3riWKMdoYcABJkh/juJAZ8hcnsLKcjOnzTqk39HIBOvB1QDhWu4FekkY00oRMyAq
         7MV1xst6H4nRXsd2ZAYKDOV8IYyCTQUzZxKKNDAFQqFcZtRZYVKl466pIYRchScV+TbJ
         tNk+BYMerzhiFzBJnZ7XQiX6JVjhZVrqjwimbx/sCnmRdZ5oypnlsSoynAnNznClmPzo
         5ZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Fjjb+M2APJvOL6vId6y/9zmiROW8RHL45yQ4acgwQA=;
        b=WhyLoSCn5ThWJ+ZatukmNygtcEFnvDAoOE9AriJxKh6bSskm7WnS1jTTANzfvODJvQ
         zAwMNk9hPFaj09urAgYnzHcVJ7hVgK4OPbiNG0PVjJHDbVKPmvcXZ2BTAQsKMZ6S8KgT
         7NggS+qMCvXsesiNv9+kLosLC9uNoH5l3k22Mvg6bB2hS7j2THiZHFSHQb/LqyvWh3y9
         agf3THnr446qx9w9TJkTOBjsJBJlspc8IBL6w9ucQY67PIJDy5G5CvOdUREE09EWLLY/
         7yagdlkWHEWJRHgd/Gc5DDrDvYOjOBZwPFAzz5Yf6oeh8p2mtcGSmLAz99atq6gKu3ae
         iuqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaH37pIixSFYJWlOW6mBYdpvUQGluothEVwjBeICIP7jPaYRsn
	NDJPj6HYfHuDZKPjpr0bHM4=
X-Google-Smtp-Source: APXvYqylAtWhVBP0JrqQ2FJpxI8T8TUaHyAqiek6b+vh+ZZjlaiZNZI7HtG5yU8XdEaC+Ss7TIqecg==
X-Received: by 2002:a9d:19cc:: with SMTP id k70mr12264184otk.304.1565255366948;
        Thu, 08 Aug 2019 02:09:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71d0:: with SMTP id z16ls2399565otj.2.gmail; Thu, 08 Aug
 2019 02:09:26 -0700 (PDT)
X-Received: by 2002:a9d:6c46:: with SMTP id g6mr12721470otq.104.1565255366676;
        Thu, 08 Aug 2019 02:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565255366; cv=none;
        d=google.com; s=arc-20160816;
        b=qWxbZBr2Lj34R2fBqt+kV2IfA9qGcJAupWiEpR5PAwY6ArW9o0ygESUF1CO+uZhEir
         OlajRrlGaguTqgBf5M8cmy3kxCDXl+YDj2InRDLYGe8RI4TVg1BrP6GtBpvzc7Ia+DLW
         K8eCSM9Dv9SPzIldr718jAWX3e3LHnh7VrdVF178/cgkAPw5u6f2eWp4GPdpWCNCr1aj
         zgM9KNYFiqldreY1/dFIgBN0cPZFnd6ADAJzh11YRXDOg9Us87ninKqeb5wU2VCstbgV
         IU5gVSCYu3MPR1AAgiMpbYWTVe/V8qPbfMvRRT2JTSHBAo1l/wvmlG1TIeuY4aqmhvtq
         6onA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=30SazUA7Tq8vOLew/Q0ozPIJ6UITJfx6OSiQFokXt+o=;
        b=ZD6018Qoepu+YUrV6I3ujIleBaEz8NCBr3FxtalhpD1hCKGpLgoJNj0DJIyTAkH/rx
         v6tK6z8yfLlLyo57+GQgcFGOkLTevt/40FsXsOSAEM9yvVkST951W/6AKbHd9aPiZODI
         88xQB1BRTKXdGYYCR8AWSlXBfp6Zt8PQVLMkedetLlpTy+vHZfzQ/THfl60fM7jpMcxf
         b/lfxIlnnq55MB6zcH4SGX9kQHr1hY4HkQqag5bPuY8/ZDSCe1UGkKcIjwn1d2A1I4rZ
         FFwuHo+XMW31Zl4GSvvPj1pbmmfknxReBqBPcQJkGnruJu6089XVzmkIgZmjlFn7YowD
         gkgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QoAMv3De;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id p6si5222739otk.5.2019.08.08.02.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 02:09:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-yw1-xc43.google.com with SMTP id g19so33089936ywe.2
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 02:09:26 -0700 (PDT)
X-Received: by 2002:a81:3646:: with SMTP id d67mr9291114ywa.77.1565255366232;
        Thu, 08 Aug 2019 02:09:26 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id z9sm21277603ywj.84.2019.08.08.02.09.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Aug 2019 02:09:25 -0700 (PDT)
Date: Thu, 8 Aug 2019 17:09:13 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error
 injection
Message-ID: <20190808090913.GD8313@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190807160703.pe4jxak7hs7ptvde@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190807160703.pe4jxak7hs7ptvde@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QoAMv3De;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, Aug 07, 2019 at 05:07:03PM +0100, Will Deacon wrote:
> On Tue, Aug 06, 2019 at 06:00:12PM +0800, Leo Yan wrote:
> > This small patch set is to add support for function error injection;
> > this can be used to eanble more advanced debugging feature, e.g.
> > CONFIG_BPF_KPROBE_OVERRIDE.
> > 
> > The patch 01/03 is to consolidate the function definition which can be
> > suared cross architectures, patches 02,03/03 are used for enabling
> > function error injection on arm64 and arm architecture respectively.
> > 
> > I tested on arm64 platform Juno-r2 and one of my laptop with x86
> > architecture with below steps; I don't test for Arm architecture so
> > only pass compilation.
> 
> Thanks. I've queued the first two patches up here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection

Thank you, Will.

Leo.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808090913.GD8313%40leoy-ThinkPad-X240s.
