Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB54WWOTAMGQE7XSTY3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A020776FDE4
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Aug 2023 11:57:12 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id e9e14a558f8ab-3492c39923asf1154125ab.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Aug 2023 02:57:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691143031; cv=pass;
        d=google.com; s=arc-20160816;
        b=BzPnSFC7pmQkUwltPjm+h6t8UDLgyaIe/1QCPV0ulHmLnBaHwlsvd2bZrJBfLrSydi
         VFFQP2s8cpVAK8So8goQD9+Wwj2toGgVl1bDQ9K1v/qszdOj9jRb17YoE8wxw94E1iAL
         ohRAQw5sRvR6neQEJyPTWgYczjHqgT6lY7wSVWSJKqXQHNPD8fA7+n1laA1Z9tsc7iBY
         Jtx33kClCGi1XctKY39ZITclnYM+DHF2J7eAvfvIL/cIgiX0Kft45ROIUnFPpKAgcvPt
         SYNiH4s5TfjWqY9u2+TG8/MJTVacq8UFbd+nfuMYoB5xIERsRMeWLXdUKbLBoTEMH5Az
         /sww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ln9k8P6d3N4DSh3RUwKdcchqeuIC0QKKCb2jlM4EiuY=;
        fh=UFrDSx1gL+Cien1t6ynNRTOQYwN/a3a1SQt7eUzHajs=;
        b=Tw4SPBsveNDnwbC0BdnIHn0W/tJugKf3ea6a3jD2Q4QbCvWHpz7AMjHxr8Vdp9BTzU
         a0/ky+spTTSkvL32AczGEN6GafvUh2p6ej70AWouLIDIhgvTwowWVSuO2fKdZbgMG85j
         Jsk0YWmhJN+wtMQncnMtvc4ADHT4yLwKx4aBs+PSB98rCpqS5bENlpfseT4qXwU+TQGW
         a1dHY5HK8qRPiymPipcroOmO1o/M4XIQpzJdbiEBzTHDE7daKrIudaR3E+N6jAeC37bB
         y/MQ7cRHMzIeLAMLNsftl0/5+C9ypXAhNtv4ve9aZjAggGHInD8MhXb7LVJTuCuoH3NL
         4KyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CaZBEFs7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691143031; x=1691747831;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ln9k8P6d3N4DSh3RUwKdcchqeuIC0QKKCb2jlM4EiuY=;
        b=EOc18A1ohN1btxq4+z9bApxZ5Zn2LKS3ewcKwNcTCgHddgjODFRqajZjxwDxDEa5HL
         b1RBQSYs4RA3Y1PeOXAQ8mF1h2U3n1W3YRlfZHcHNKZ73QUfOL3R3ic4MdO//Th97Npm
         hR08ZMLVuz7z9uD/GGF5SFDnAK/O3dWgwyzE/ma2FsW1nffCjYbcb5nYXuBDSbud4Ve9
         nEQPkWJSmbKB9KWHiXjucQzeL7U7+6+crABnD1BYn6QhKu63XHx1AxLZBL4pDhgNaxKq
         QZrMT0OepV+Kx5FckONymedL/8j1EvLBfqVEwEKEGgdqvY7e21u2WAkILFRsD+x09QOY
         mpWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691143031; x=1691747831;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ln9k8P6d3N4DSh3RUwKdcchqeuIC0QKKCb2jlM4EiuY=;
        b=a5bFpjnSPoyMsL+77FF0yeGTV4nWrSenZt9IVDGZtAmATj1pA4JCd40oOSdGvxOyca
         eoLJHExbM6nBxShFNhoyuFfddhmOIWr2Tu+Aib54bGD4a9xgLlDpJHQDEWZBLUzzFdsR
         Yu5BT2ZQ7FnR8tFpPqP5hwKchxiFuHdGCDRgvg8IKofJ/0JKk0ks7hf9P0tVNMH/nx4A
         JZ5KzqemxtRbOWOjeYYhIdLnzfdIKBObx7JXn4omBLh55OfjTYdNM4pohmq1k0XlMe5g
         Em1V+qY6Iv+rozhl5mxJNc6j4mUsvC33SLCs2R5jBTxSpRjtU+hMk8d07xbRs4/MTM8Z
         PwtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOJu0Yy51XMLyWuepPofC7g/Q3ualt5OA7CpcDukPt/RPWgjp7QuNe38
	7uoyEVy0GkO2lIvuZUwYaSY=
X-Google-Smtp-Source: AGHT+IFJNdl9WZ8uOEGCInMkFPT7Nx8rKP5ZrlGZMEFjDzhwMj86ViFLShzY5oM4flfMIYBuAjROyQ==
X-Received: by 2002:a05:6e02:1bc5:b0:346:676f:350d with SMTP id x5-20020a056e021bc500b00346676f350dmr120015ilv.11.1691143031261;
        Fri, 04 Aug 2023 02:57:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3010:0:b0:349:128e:e477 with SMTP id x16-20020a923010000000b00349128ee477ls46904ile.2.-pod-prod-06-us;
 Fri, 04 Aug 2023 02:57:10 -0700 (PDT)
X-Received: by 2002:a05:6e02:13cd:b0:345:787a:cb27 with SMTP id v13-20020a056e0213cd00b00345787acb27mr1370312ilj.21.1691143030590;
        Fri, 04 Aug 2023 02:57:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691143030; cv=none;
        d=google.com; s=arc-20160816;
        b=c6Ilndn/7GpVCmlBxPRD0YetjtLxtbilxwU9hsdIlHQqWAtHQ3gwASpOi4R7wSeMFz
         BDMUeH5YJ0VivS64iHY7yBM4owq1An3ek/VcSz5r9QvlPMcJCNBLKbmWYeflGkd7V7a5
         By1zpNEkgVmSJzZMRuh/QdDsRbEQTcfTj8RwO4FU1GvAt7Ji51d2xG0fRzXNU9Emg7QE
         WWWEFqq4EFa2rlS9njd4FUcxArW+o8ebjWNMzgSv0me2ukC/rFppse+MVQHIhQXJyUTD
         8mTkv39xT855Rco7TWkjbPxwz6jHcPNOI9Gis4q/M+CSExukb6oDKLsHwgfh0hdtCj5u
         MMvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Eip2V5vQaZYrHScMJ4tcozJq7D/+niIokgwCOgkYi/c=;
        fh=UFrDSx1gL+Cien1t6ynNRTOQYwN/a3a1SQt7eUzHajs=;
        b=MrV9gIAlEBX6ZM6weOzipz991GeAVNwAmDreGj6frHDfN4iAXwcCy5PMmrKMX8Z9y6
         +eh0HiDeZfpHiAnCIjSdIlgmgkom0/XV0/tLZNAWAIL4MTzMoZaRbUb+apRH+ACt/Z7c
         QqD4ut4VabvPvjXKnaIsEbeIjr1TzLGq5/8vHP85ajigysIs6QLlFH1nBbcgKOXpOhwp
         NMDfvZhF/ttK7+FxNw6Oiv5jbPsx7e+t8+O/u7Bb7g84LczKEw5KueFGnogAeUwPlr9f
         XCiTXPFIycUKKI5mJhN0jFiWe+YJFERBGsNHnsXi31U1BEy43HJj2k06lCdhSgBKiPjA
         dLuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CaZBEFs7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id o2-20020a056e02114200b0033e5251ba4fsi115869ill.2.2023.08.04.02.57.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Aug 2023 02:57:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 28CAC61F80;
	Fri,  4 Aug 2023 09:57:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A608C433C7;
	Fri,  4 Aug 2023 09:57:09 +0000 (UTC)
Date: Fri, 4 Aug 2023 11:57:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Huafei <lihuafei1@huawei.com>
Cc: stable@vger.kernel.org, mhiramat@kernel.org, tglx@linutronix.de,
	mingo@redhat.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com,
	sashal@kernel.org, peterz@infradead.org,
	linux-kernel@vger.kernel.org, xukuohai@huawei.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	rostedt@goodmis.org, weiyongjun1@huawei.com, gustavoars@kernel.org,
	namit@vmware.com, laijs@linux.alibaba.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 5.10 0/9] x86/kprobes: Fix kprobe debug exception
 handling logic
Message-ID: <2023080446-outcast-stumble-91f4@gregkh>
References: <20230705064653.226811-1-lihuafei1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230705064653.226811-1-lihuafei1@huawei.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=CaZBEFs7;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jul 05, 2023 at 02:46:44PM +0800, Li Huafei wrote:
> We found an issue with null pointer access due to kprobe debug exception
> error handling on 5.10, and I proposed a separate fix patch for 5.10,
> see [1]. But as Greg gave advice, we always choose to backport relevant
> patches from upstream to fix issues with stable kernels, so I made this
> patch set.
> 
> The main one we need to backport is patch 5, which uses int3 instead of
> debug trap for single-stepping, thus avoiding the problems we
> encountered with kprobe debug exception error handling. Patches 1-4 are
> pre-patches, and patches 6-9 are fixes for patch 5. The major
> modifications are patch 2 and patch 5. Patch 2 optimizes
> resume_execution() to avoid repeated instruction decoding, and patch 5
> uses int3 instead of debug trap, and as Masami said in the commit
> message this patch will change some behavior of kprobe, but it has
> almost no effect on the actual usage.
> 
> Please let me know if there are any problems, thanks!

Looks good, thanks for the backports, all now queued up.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2023080446-outcast-stumble-91f4%40gregkh.
