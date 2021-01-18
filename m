Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBE45S2AAMGQEOB7F7OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D615B2FA1B8
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 14:35:16 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id v19sf3234214plg.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 05:35:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610976915; cv=pass;
        d=google.com; s=arc-20160816;
        b=K8V9ed1pgSZufDWm3cgLhX2QjNaHETt2P2Y9DR8oXqY2ue5jcDwxggVtM7HceO8zJ+
         9ZrRXqnO7QiP8ZGwCSxT/z7N35Jo4Vsw5TQRWQO9mQvrdlhrpPGCSmVnNH3TGtZmwfof
         2smVfvaGoOMzTA8tIimjj7b/ukov602Z6yFeP4uexxKCYX5E/uVfzPouhW5Ka46TtVtP
         EpjtNcVJHV3JlHplhnY7e0FptS0hp/u1ta7enqz3rO/MuzefrD8KrTzTyaj8XwTi0bhE
         q1ki/Mn38ZpzIW58oKZqx2JVYzXoKVc/NS0c8agiflb1XMUQlbhp0vdCy/4vlobSUzcp
         0+dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aGXtVLjH0KC5U4mgv4A/phphwIxEepK5td9WNqcnuSo=;
        b=zOrIdIHPH21S0keT2lVBTGAYb+SmgpFZ5aP82DDRYUUEfQmaS3LVp9eIzQGDkYiT46
         wn9fGasQlcn1xoCsMVxzbZ+amozsLjZ//wHgPGiD8ejOjS3o0Q+xDaM5V8+ZxkF8XWy7
         oxGoS+Y7tYs2Tcc419ommxL3HbmZQIvvZAffJNxML7TOD7x7y0WRuU2BzBsrT0+DtaQE
         NyQQHoFhljZ5taijzD7hwdujU2w9EyfH/o2fmX/N7h/gIlblAtb+SfrJNWPErPq9cf9E
         TdpUoqYa7NyRBgSjnsaCQNzl90QFAEhYe3D0iMIkXgRYoHn6kPv8bDmxJ7hm5Ie+T/3L
         c7ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=DXnI2dGL;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aGXtVLjH0KC5U4mgv4A/phphwIxEepK5td9WNqcnuSo=;
        b=GzhRGAg8oyZcnkpT1LqWemedmXMhketAzVkTDj0/LaFea3jsJRo2lrsgPKehgLd+ga
         JJ35tj0s4sGO81OIp7eP+MflZnBlUF0IRCUG0MPd7V3k0nEe5ju7rgz524FnNgnYvPkX
         Mu0ytuvN/dmrJVcYOVIE+AaDvHaGNAzBgyoX4CUw5R98zjERQTBrOutR4MapBk/6VGHa
         gOlEwg3YkSrlKIBMgV0nWOilIYpnsrOlRjjw1FN+recLU+zv6t/3v1cVAyxOTmBhabCB
         nchNDb+bOYyIlIM0YeN64WiN8IL0noDfrea0L5fjC5eAWDlYmYHUbtw6R5NBJG+IoVdz
         ectQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aGXtVLjH0KC5U4mgv4A/phphwIxEepK5td9WNqcnuSo=;
        b=L7AO44XzCeV6N1zlY6u0LL0Qt9/bJXgX/I/LvCJxGQERvhW/J/6Ny6faPqaqwadCU6
         gL4AODYmtqTGf83Z1qWJGXNlegjtgYA8owdId4k3wGxJ2hx0k2lkWGDb2Y7xFZM88BFG
         PtZ8cNEG+U4zShCLcWtXz/sHFYyNjz3NIiSc1pKbNxwsanxk6D1tVzhI3Gw22sqHjlQO
         x2GGMe4uPp9jHhbcgCOyaMUtRly/fn/MzKeVDRdudmA3Gx7XIhjKBF+C8BjoySOF2Olg
         BzbbmmnT6cFDCFnUe95WwL2tmv9hpso72D+9Pl3udEAGW1c3sYcg6Sp6SO+SRQMZ2yPn
         RNBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RbzSs4JgzVzrNuXlGdXVi6mMcyC4pnezHyMJheYebYe4Fb7Xh
	5nKp8IDWvE2K8NUHe0x1bqk=
X-Google-Smtp-Source: ABdhPJzylnIBFfrS66LJeiX8XLu3Y/PubD/iPG98Zq3EdrWVqWM50uttoT+yzpa1sfj4/xVuel65kA==
X-Received: by 2002:a17:90b:1a87:: with SMTP id ng7mr24796942pjb.211.1610976915654;
        Mon, 18 Jan 2021 05:35:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls9206342pjh.1.gmail; Mon, 18
 Jan 2021 05:35:15 -0800 (PST)
X-Received: by 2002:a17:90a:ab8e:: with SMTP id n14mr25679504pjq.96.1610976915043;
        Mon, 18 Jan 2021 05:35:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610976915; cv=none;
        d=google.com; s=arc-20160816;
        b=eLyyIA92j4D8pSmoJ7BRvmryNU02KSwLPLOxT5CZDoppFKlXCmGPt0J3bAoiNn0BR6
         pxwdFF08gwBV9ox1eUv7IkK9DMq4gm0BqLSPbAo8bp/bS/sCpa2Z/WsGnyClgq3UuNIe
         WA95F+NBEvLC5das8Oq9zV8ahDnjcZGelGBTJEeQCSMKo0hjIawN3OilkgHjfYYg9Wo6
         KnRH5zcd1KOFE1uC6biXUkjYfrhAMy2Sz32Wv4vNGGXHX6M0DTQpm6ERjMVmZs5rQ2EI
         WUpeIyr+kLxZa7I4B/yN0KR+bGD3G1Twg2OVzKni/Vy+SPTj3L0XCqFK4oW/6u7I80c4
         X6Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xvb2bA8jC9t3A+BvPDpcUOdOaB4WCZGa538oav7lt1c=;
        b=GxF83ufs+N8n2Xy3ppp9ptl4oV3RfrQCRMVy/7EfH7nccLt7JSTjnsl9MfXnoDSxlg
         2qubv5fzLIg4J0Mep39m0lM/nQL3Yk43TR4q2m3jqI3S6rr3+Pa249rvPJgQRL/O65RM
         OiqFOqV1XkmN0rggIjU1HVbEQ4asq4ew4oUGBb+O19omrEGV51lZGBSsZoDw8Yf9A26a
         BXzzXrAzP8eJHn9Pe70/pELWvv4ZPVn0umMQXJcs1XfV46DvJ2DNl8Kc8czE9KOe2jQJ
         8jpnistOcgUk8uMdcpizJjnOuQyeuoDTrWvax9wVht7JpmxvU+ISF1yaq+iiLXgad9DG
         vmKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=DXnI2dGL;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id z2si1324549pjq.0.2021.01.18.05.35.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jan 2021 05:35:14 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1UgU-00028y-VW; Mon, 18 Jan 2021 13:35:07 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0DEFF30015A;
	Mon, 18 Jan 2021 14:35:04 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id ECF642023AA35; Mon, 18 Jan 2021 14:35:03 +0100 (CET)
Date: Mon, 18 Jan 2021 14:35:03 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Like Xu <like.xu@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	linux-kernel@vger.kernel.org, Jason Baron <jbaron@akamai.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] x86/perf: Use static_call for x86_pmu.guest_get_msrs
Message-ID: <YAWOhxi6Vxiq8JLR@hirez.programming.kicks-ass.net>
References: <20210118072151.44481-1-like.xu@linux.intel.com>
 <202101182008.jQybUDa0-lkp@intel.com>
 <a82754e7-9a2d-7ab4-466d-fc0d51a3b7f2@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a82754e7-9a2d-7ab4-466d-fc0d51a3b7f2@linux.intel.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=DXnI2dGL;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jan 18, 2021 at 09:05:06PM +0800, Like Xu wrote:
> I guess this fix will silence the compiler error,
> and v2 will be sent after the local 0day test passes.

I think there's also a problem where you don't assign a function at all.

I think you want something like

	if (!x86_pmu.guest_get_msr)
		x86_pmu.guest_get_msr = guest_get_msr_nop;

right before x86_pmu_static_call_update();

And then have it be something like:

static void *guest_et_msr_nop(int *nr)
{
	*nr = 0;
	return NULL;
}

and then you can reduce the entire thing to:

struct perf_guest_switch_msr *perf_guest_get_msrs(int *nr)
{
	return static_call(x86_pmu_guest_get_msrs)(nr);
}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAWOhxi6Vxiq8JLR%40hirez.programming.kicks-ass.net.
