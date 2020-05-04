Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBVMQYH2QKGQE4ZHMBGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 267791C4080
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 18:52:39 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id c190sf11354225pfc.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 09:52:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588611158; cv=pass;
        d=google.com; s=arc-20160816;
        b=yYwHP1Ei+UtFFVOyvKJmhcOPqOm3BlALdqvq1kyDVUBh+5ysV4XWkPcNJIJsGqdqj6
         BVUaOhCeGumWaUFMMXIC1YSlX6vx5Jr/r5zVOJDc2ln3FH6mihMNPPkGwgRTkibWmiA+
         uFXUhCgeD1wJUGrioeoldL30fABRrE5a2i/BJjsk6lFOXa93YDr8GNN0KOZBepH/rkgQ
         ZO7rqS9myKL68xm7eBgG5FjuTa9z+1h9Km4jX6Os3V62mzOY3r6yxr0K47INJGWUKj4W
         3h27qZfAfuHgSL0XEZ89K+E3NPwFZagFqpQ75rjY5KFEq6RM/XP6BrZaW/s8rX5HpGwE
         F4CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=E8Sh9PvB4FN5ZkWflTc8SsVV392jPKHeN64a3LKrjVU=;
        b=QWg9NTm6QZYl3RkoDrT9GUWoXWU/vvXbdt5lJQLTYLsXjIJBKsDOXUGQJFeFC+r83q
         29AdeJOm5Cp/cc2/xzq0+7ix0xZQQJrVZDJSXhXNEFe49JU1wMIpfpH1Px2ocDsw0754
         6gC1qZ9wRfBYaJ4TVUpVQt05b9ar2AoSTMb+StI7KINhGncjgFP/Jcy/LwlovZbyi5bU
         AAWUw1r4sU4u4uLj5xrcK1xozszQEmJQGgadGgtAF/VF/HcSru5Z5uJQMXbUrAmHGrgY
         MyMgp6rdYLx1QNrAt9aSTL3PSHDPbIObhmu27V2G7Q6m/EoAhRL6uYfnOAMI/38re+Ir
         1LSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uyMa7may;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E8Sh9PvB4FN5ZkWflTc8SsVV392jPKHeN64a3LKrjVU=;
        b=UFJfBZMdBaBF7IlLbZ7mu4y3OMfsbSKgmcRab3kSMDifbWUQg2QAem7GyLaTG1bAi2
         o4cyG4tOe7lrmAm/hitysjwx+4hfK+ZoFXfwObdEiKU5FLnTfDRyQXelP/qx5ATHQnMD
         n7qLrnnUqgk5wMv7k+8IQXxCQTYHB5fUFDbKuj9JqPp3QFQYkncHpWKhilT/NtuMO82I
         0YYuQsyCKIZDIP5ShLdh6xMFS75G4vjqymCtdCQWdx2I0FBpOXE0aL8wHxabMfZYvTZC
         m+IxzO+e14lT7YR3jtix7vODvCvtlYbT0tb74UZ862UT4ICju9c64KMArayfkkIYinJd
         TGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E8Sh9PvB4FN5ZkWflTc8SsVV392jPKHeN64a3LKrjVU=;
        b=Bq+MEDJJhh5c4zFjfCUtrjrWifGzHMFty66YrXxqliBvNZIHwirbOkZBnQ4WzwfJPg
         2AT0DhKvHQp2GRLAgBu6RR/zaPYq+GTGqaMRHDMrhRkMctjo5VcCQSZqDYz2i8vNqSia
         u0cShHLxfZ79M+8NKmQzn2FC9IseI4+AYwGohy2qbe155srEtC4s8YIQt6SpNjf9D+mY
         7DHYda0QwkNWrRpfR7ueTRcC0EsBPScMC4uhbsP6KabtjkHluOC9ixv4bSm1AO9AkpHq
         1sJpxzoWcoxdDV91CIMApndgk7/1LlzAOgCXKJwwDUl3HPBHV1X4/47GWwkJUP6kI2/5
         EzQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubivcKabi6Th2iIG/OCFz7k/FyGhU09HckiNYyNubScsVZFfO0k
	HlxekTMAPDBl+yqpXL9YoRE=
X-Google-Smtp-Source: APiQypK0sQGl1ZDDFwszjd9Yy7AF0vNmemF0MhviaBIjiSn37NvAkFBehHPd4mZwRWESzpAHKRgQ8A==
X-Received: by 2002:a17:902:c286:: with SMTP id i6mr103366pld.135.1588611157875;
        Mon, 04 May 2020 09:52:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c85:: with SMTP id t5ls18824462plo.9.gmail; Mon, 04
 May 2020 09:52:37 -0700 (PDT)
X-Received: by 2002:a17:90a:224b:: with SMTP id c69mr296908pje.8.1588611156195;
        Mon, 04 May 2020 09:52:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588611156; cv=none;
        d=google.com; s=arc-20160816;
        b=GA1yjGdh5Z40OgMuCBOKXQpsDqErYOzinHkHAw7EQ4tBt90TdTUpZkinJrL5BxMVhc
         xdBH6QROqnwk4EmJQ9aa4LYy7wK90Vcs632sJncRqkhjYpKqXmSL1D71BmOwL5wcvFOD
         kOSU+ALtIycWQ6Mi/igDDzHmupOZmyF2IDu+CgcmNAkDMZf129ghzL9EubVNZV20F/89
         3sfg9+yzlhNHN0kVH2loUTqBK2OcpxQF+U53HxI65rbOionRnDYQyjlH6mPwykZ8OpAk
         qQdazNpmCVbM76kMQNh5X8hYr9UqoQgvpeDgkQvL1ElU+SuF8FppEAqEsmAk+qJk4QpN
         pYFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oC+ESnzVQCxKbjADJvWYjCJ5RJvcKVP50R8qXsMX4qM=;
        b=tgTLw2Z5qCuP8T43AIRIGCJDGFa2ZtB/FaS1n7yg2torv8UBwbw1J2PZResYIe8QHd
         ap2/Cjx6ebCK2Ew86z46Kp6ocHKv7CassBIoRWNKprtaOZ0uQ5O1AschsC2BUJS07PcZ
         2Y9RARc0XqvMvUq73D1ZHqTEDKnEDr1tii9JgQdzNoEmtAc3yFL/O5qfhZdrsi9xwENY
         oWDsdu6KnKnErtxW/CYlJm0yJtruO/ClcZQvj254hY5HlmnMo+HwKscinJwaegqpjmdl
         sBHPo94t3GmJ+tkEuEd1kCLinmkNHa58Ctbn8D+wJbxe84qDrX3b3w15hRKSax9L1u34
         yUQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uyMa7may;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z17si1142758pfq.1.2020.05.04.09.52.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 09:52:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C292E20721;
	Mon,  4 May 2020 16:52:31 +0000 (UTC)
Date: Mon, 4 May 2020 17:52:28 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200504165227.GB1833@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
 <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200427204546.GA80713@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uyMa7may;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> > Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
> > allocating blindly out of the kmem_cache? It means we don't have a redzone
> > or a guard page, so if you can trigger something like a recursion bug then
> > could you scribble past the SCS before the main stack overflows? Would this
> > clobber somebody else's SCS?
> 
> I agree that allocating from a kmem_cache isn't ideal for safety. It's a
> compromise to reduce memory overhead.

Do you think it would be a problem if we always allocated a page for the
SCS?

> > The vmap version that I asked Sami to drop
> > is at least better in this regard, although the guard page is at the wrong
> > end of the stack and we just hope that the allocation below us didn't pass
> > VM_NO_GUARD. Looks like the same story for vmap stack :/
> 
> SCS grows up and the guard page is after the allocation, so how is it at
> the wrong end? Am I missing something here?

Sorry, I'd got the SCS upside-down in my head (hey, that second 'S' stands
for 'Stack'!). But I think I'm right about vmap stack, which feels a
little fragile even though it seems to work out today with the very limited
uses of VM_NO_GUARD.

> > If we split the pointer in two (base, offset) then we could leave the
> > base live in the thread_info, not require alignment of the stacks (which
> > may allow for unconditional redzoning?) and then just update the offset
> > value on context switch, which could be trivially checked as part of the
> > existing stack overflow checking on kernel entry.
> 
> I sent out v13 with split pointers, but I'm not sure it's convenient to
> add an overflow check to kernel_ventry where the VMAP_STACK check is
> done. I suppose I could add a check to kernel_entry after we load x18
> from tsk. Thoughts?

I'll take a look at v13, since at this stage I'm keen to get something
queued up so that we can use it as a base for further improvements without
you having to repost the whole stack every time.

Cheers,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504165227.GB1833%40willie-the-truck.
