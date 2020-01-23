Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBGVNU7YQKGQEVYDSBJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC9E146F8B
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 18:23:40 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id a4sf2137197pgq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 09:23:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579800219; cv=pass;
        d=google.com; s=arc-20160816;
        b=RBnNv27aT+CnbyrsRDR5fFiS28fOxqNMxpGLSM+eIL+kGMmXoI38Wj/L051A2kbS9Z
         UlspA3OJFqhu8WHy/ZDgscaABPm6/UPICK732OO/CVJFohg5JTqZxUZiAU3EsDZXjev3
         KZH+3gyckYf4HFIp9TGWDDYUj6QXK4kn5fgniljkL5EOs+QW232YvOPnYyqGcx7f7Qd1
         ib/Z0P7vragcYsDGNpy7wRj8EfaVTuG3ms56rA0VxZWpJS/TPGf0xrR7xGkn031VuFXO
         uuW7JVejLZS6UNs/iljjlP5jwTzO92zq1PRKsd83PAg2lmhvY5iWTE2vo4oZI03LDzSW
         Ti0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:sender:dkim-signature;
        bh=SPrJxWqziFnBWWfo++Q2P7xT/GK/F13PKjlbsFtEpj4=;
        b=pfmblmT81YdCGmt3v1AA3GnErVP1mdmjSxmPOI2OjRXIFReiiKiopC8gBsQ+5MV8wL
         /A1YOdl/05sEnadhv5sN/rULybrVHAC6yU0mU0x038x/BC4elr1PEThhgGsWIcgyTVMY
         UVW5Cjss2L+DQgvKMwZEyWALa8Y7Yz3Rewokdu8p3LTW9JDLQsY9qp4mObeYpYpV8ixt
         VheNuVa8oT/3l4H4cOeFJczFqZhMXnJ4F7o3MDIMRPwlJjqEvrQ1aFF04D0E7bVgZjL0
         yV48WCDfkaowrZhUBKeVyfVwvs3feF5wC36mueNyUrrQGh0aVYWCWZPkgKCTmDEM/2O8
         D32Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=hVbeOddT;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::833 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:message-id:references:cc
         :in-reply-to:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SPrJxWqziFnBWWfo++Q2P7xT/GK/F13PKjlbsFtEpj4=;
        b=D0zo2pwfBFmcB3XKboTvYH4PJhwLdClld6BoiHQRNWFtks+O70ppCYXg4gBG90HKcE
         j/nXP0hhs2rpssZQuRGkB/QSzO7PjaNkoNgQ+rJUK6thR+Q4cfgjbAJERlbjAw6NMSYf
         uu7AdgFNeL7Ja/2ExHyed+ygwYzhWgzgL8NxsnZuhR+iRog6bsYNfZm52mH51K0i25MU
         pQ+xg0goecOW36qaNnmxh180+5v8YAEAqiUg9mRzSPQazwhc6sBfvZbcFUTUOql749nX
         g9z5XJPX5cYta2ixghV6c+imURVbun3APuzWJzibl/8eB3aPC59JmylkByNUWHoJqo/6
         TBVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SPrJxWqziFnBWWfo++Q2P7xT/GK/F13PKjlbsFtEpj4=;
        b=MuYdsF5cGjn+wvRCWrqY67S6jZa8cywmnKUHEldMRAKn6MQ+dwztSOioNY5YnRD5hG
         xtaKoU4z/JfZkc1d0YD8hSs2T52LUmnvSjYG19FzPfjbFVQHWdUIhY3q3ahAX4YSrgnt
         AOaQ+m441IEdAJlcphYkJQTtB24gyPX/SWUW2zzuuEFSzIX/2ORp85uKEGI40NaoCcDB
         LDuOevTtaiUoF8XRASdiOIPxnUmLvgN7a2vCsK7Ve0vvZUtJh5XkDbUMLj1kqtQDtfAq
         ZRM9YXHUp1hNn4aD9Au18TEKKqiBkjhdBTedkaizag3Hb1JWHpwmD/x/5R0H7QIU8BKG
         qVmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPF+JIK2quZa+qb1pGEh10hE8bL5TtnJw7bVlkrIgUu3/foRDg
	UtoS/3j5Ld1OWR6c/Nf75Mo=
X-Google-Smtp-Source: APXvYqyohkM8uTk37XHm2925ZbR8/v0UN/UFn7kUYzE5J/xq7vxt39FQIEo3JwrnkM7GvdOBRyF9TA==
X-Received: by 2002:a63:6c82:: with SMTP id h124mr5006733pgc.328.1579800219123;
        Thu, 23 Jan 2020 09:23:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:567:: with SMTP id 94ls13536499plf.8.gmail; Thu, 23
 Jan 2020 09:23:38 -0800 (PST)
X-Received: by 2002:a17:90a:17e3:: with SMTP id q90mr5468066pja.139.1579800218574;
        Thu, 23 Jan 2020 09:23:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579800218; cv=none;
        d=google.com; s=arc-20160816;
        b=fIBlZ9dSoC7Gb9LP40KkJN0OdjgiII8OUCnEtimS1mbitaZ0WhWHkfKqu6laqLH7pf
         0YLfuz8C2Qd8Orr2wXSlqoaMvES3WOmwyYYts5hjo5B6rWkS3uC3VdV/o/ohmMDG8F0a
         Bt56/Cn9Q9MdOY1LIR5hLXWy0jamdHrVqOvFPB66VLldvDxtzUSZASn+9k8Y3lv5cnmd
         gn+XC7h+k3XE8quwgPKFmTRFDVsl1+TWXve2KYmgpVqfenmLIwvrukPSV+O5lOKZkd3x
         hA0kZdHXEo602o1KvtMZ0Pfronkr7GE9toML2r2/p67xJUaA266/2w34KWc//Ff9R13b
         zDRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=+sYyfk2n+qS4NMdl3Vo9UqAuiI6xlOeTWYyIti0K5ik=;
        b=0IZQMHkUsoqDKfnuHI2vyLjDrxBuJsrXcg63OXHM+LqghMJm8H6FlyR42yYyFFE5DG
         lsZAVkvCZK2EwHBSwqeSXu8lJe92cU2ME7Y51gHmu2s6ecyvzbN5laTvKgl5GZHohP6k
         4PVZpQJu+7SnTrVyfHVs1PzNM/YZEG0RwbW2r2QFSM//tEa71pyJR68kcmEI6LWZNdla
         ZQHQxJwVHa+G+68w05iPDHEL51XXEIHPfmogAyzVGt1Ju7/cFPMlY44eyDtCqI4ulaSL
         aH1EJ2UBjSKKFN3M/iOJExTkZ5t2SKtjTIRFetu3e8BTr7olFqwJpzxLC3KSVT95TGUU
         0Oqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=hVbeOddT;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::833 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com. [2607:f8b0:4864:20::833])
        by gmr-mx.google.com with ESMTPS id 186si151976pgd.5.2020.01.23.09.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 09:23:38 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::833 as permitted sender) client-ip=2607:f8b0:4864:20::833;
Received: by mail-qt1-x833.google.com with SMTP id h12so3093970qtu.1
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jan 2020 09:23:38 -0800 (PST)
X-Received: by 2002:aed:204d:: with SMTP id 71mr17284568qta.116.1579800217727;
        Thu, 23 Jan 2020 09:23:37 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id g62sm1179038qkd.25.2020.01.23.09.23.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 09:23:37 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 12:23:36 -0500
Message-Id: <39F4C46F-6B94-4F0E-9CC6-1AB0BB5D6209@lca.pw>
References: <20200123165614.GA20126@willie-the-truck>
Cc: peterz@infradead.org, longman@redhat.com, mingo@redhat.com,
 catalin.marinas@arm.com, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20200123165614.GA20126@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: iPhone Mail (17C54)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=hVbeOddT;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::833 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Jan 23, 2020, at 11:56 AM, Will Deacon <will@kernel.org> wrote:
> 
> Damn, the whole point of this was to warn in the case that
> vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
> the macro argument instead (e.g. ({ (cpu), false; }) or something)?

That should work. Let me test it out and rinse.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/39F4C46F-6B94-4F0E-9CC6-1AB0BB5D6209%40lca.pw.
