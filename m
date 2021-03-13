Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB3X5WKBAMGQE2FUBI5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8191A339E4E
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 14:32:31 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id o206sf8474377vka.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 05:32:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615642350; cv=pass;
        d=google.com; s=arc-20160816;
        b=e8pLPuf2F3XtG1mboBe+7SG8VYr1oLf12ShZHvbcy3rqpNFLc8WyJmM6CTPP5B86uP
         Us061i8Hx2o/r54woPztJ1bUbTcQh41XZbq4pAxRBjBVjubfj9Np3BZWbWgYmcx3T2Yv
         BrQPwYUN0as79RGgWWbRdBEmfwB3wZfPPN81gn7WS/72/9PHDI4HsSOkOrzWgvzWhtn2
         yir5ZpqUidPm44emPursU4B/Pzr23xu0NQfVnpA1ySlVrHW6Dx0R9qRaImC39POMNPLV
         kdMaz6gglRDVjZZK/YHQPVcvP8kRzbPI5Nh2/7LeCdcBT0n1NvDRdK+L1kOPkxUwkiLj
         KdDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Yd9vnfqHEhxDeg+f0nj9uCHR9jNEL7t3e10bC28BLSE=;
        b=Hqwram1VAIXPNwJLFByA7QyZDNnk7u1VLj6QTMqGb27+3BGoGexx0mfwZTHZtjXl6k
         ogX/RGpg1/jbFSGn8V3Us3BOOVQJG9rcqssM9mDDCMSoElROmhLJLeE8ZGHgmUyVGiiq
         1Fl20iRT/NLXpgl3468yvubaaCyGtsppL1xsB6zX7NYPnFjDXJcwlPkHoqmk7ki8DpJI
         Cw8BrOaEpRwCi8CEmsRaR8ISIMeJkZbd5Jx1o7MxD4MO6oDMAfb76qnpuV4EA3qSREN3
         wXAoTo/yK7kpsEJ0ObmI+NzQVF/JbBUUZgSAYRWeDhEmOl6793wyuHp9+6WakBOh+Bb2
         E32Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=o6KG9lgK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yd9vnfqHEhxDeg+f0nj9uCHR9jNEL7t3e10bC28BLSE=;
        b=G3/MG30tztoyhgJfrD/U3WJLVoAKtFNHg5vd4eX/HctipgbdfOJREmVfvJvfG/BVsr
         eRSZ0EDth1GpEfnSoiNesI+AXu36/adcpljOxVp6PI6sKhYf/+8FqKp2ntuDMZC+xJco
         f5RDlwgC/yaVP+O3OnlPGXrE55oDcj5fv0e4777exhsKjCeTFBsDV/QAt5JY/5F5kHXC
         bwCT4Ls5h75KSzJyNGTNBA2Lz8KUz80aEZeGzjfFoF04bfFaqOIqpzX9k2WlqU8CJi36
         J3M/lbv0c1fJ8Uu1y8i970XOASAYDarc0Bygm+BtfS0gMimtjkwJiY28D4vyxLt8iB+D
         Gerg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yd9vnfqHEhxDeg+f0nj9uCHR9jNEL7t3e10bC28BLSE=;
        b=B6IR1aJQei+6tMetS45lrt03ielEqBtKvskPfKEXZQlF4/Xwc1nSwcCRAx5P+PGBJ7
         eSeM8bqmIpmO/AdW8Kq0xLKOjZOI8kzcJtCg4wwMajqF0Ut0qBasHi47wTlMBOpaDN7d
         mGpEOpQNe3Y3mTNXno+QLT2GEwjS8uZ6T+9P1rLt+NDd8LOvRkj6/Mq+EvZRQvKDOYFK
         +lEJ45/IKjf1e6P7uU1Us9WgW4QJgO0Z08/xJcm7Bml0YSy64d53GvgJUlPKEk3D51pj
         UigrrzMhDKDAHrAQt9cb4BHucWx9iXAlRfT+8BIkEsuvZ0QtRfzKkn0V0Tt9UE9Jhdgp
         pMHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318omlC0UUWIYdyj3HU58X4+ecn1Nwu8A8j+SQTJQo2X2/ewVkx
	wU0qdLyKkvqxlbCvmC49i1A=
X-Google-Smtp-Source: ABdhPJyCUMFZkAsas1wbiFnSW0Y3f5e+w0U/C/XOTn7TckvpYihzkyGiLnvdpooXwq0+g/49VasGxA==
X-Received: by 2002:a1f:b408:: with SMTP id d8mr10880290vkf.8.1615642350440;
        Sat, 13 Mar 2021 05:32:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:69c8:: with SMTP id u8ls924995uaq.2.gmail; Sat, 13 Mar
 2021 05:32:29 -0800 (PST)
X-Received: by 2002:ab0:5e9:: with SMTP id e96mr1192166uae.89.1615642349886;
        Sat, 13 Mar 2021 05:32:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615642349; cv=none;
        d=google.com; s=arc-20160816;
        b=sAkHGtwmRWf/VBCPkpJJ5Bae/cIomVxe0RYLEu3m8HZmSKvvOVv9kvUWahRB+5MyTd
         N5bQI79FBvn0/5byKMiTQe9FabzQMHv6JNmdv74lwFGH9hxg9j991JX4hwc77744LZSl
         rkZGc+JkjzT9XmQ9DgI9ebQ++CTQ+cLylT5IMVq1XZ4ieg7TXgLOs+Ol3Ez9FvOdUIb6
         ZtOs1nflgsXKY8MW+NjohObwGf/NpgPxztO5JLYHMKndiJ9sDKjMcQUKOZ388F4W+RjB
         NlRKAnen39p7f1JfvcT9Rv3h6FaIHhIlrWZHdCk9zTM8orMYYqywyMxCSHkUNko1uNp4
         ivbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9ZSxMOWfv/qm7M1aMQw9pjw73Zho0DZMucdlDjKkk4E=;
        b=AParhNB1Dif4KbdRccaDkvrJXFQztR2mNewRVA1B6PQTbfW8dI07vPaMu/73uFrcwr
         re1doTkYx9kxZqlBHbMqQy9WYjb71f9CpRU4bruvWylhuoJ18zE4H/7i9tOHSFLy5TDz
         TkHt3Ft0JLhmt0hElVuk0Y6YA9pwng2Mlsg/7P6RvWAoZ5xY/8CoG028kqYayJfs0ZnJ
         HeW/ATIVzwP5kfEIkG5nV4o9yW4dk/qlQBSzntNFj63UsuAx9orEi1yOo7xC+jWcucZY
         84bLLghfYFFEpbGXQdxIN5EhM/a89tlhWxtkRfjQKgYZQlznuRkATzkzOeh8QV43VixR
         i0CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=o6KG9lgK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u21si506314vkn.2.2021.03.13.05.32.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Mar 2021 05:32:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4416C64EF6;
	Sat, 13 Mar 2021 13:32:28 +0000 (UTC)
Date: Sat, 13 Mar 2021 14:32:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Manoj Gupta <manojgupta@google.com>
Cc: stable@vger.kernel.org, sashal@kernel.org,
	clang-built-linux@googlegroups.com, ndesaulniers@google.com,
	jiancai@google.com, dianders@google.com, llozano@google.com,
	Joe Lawrence <joe.lawrence@redhat.com>,
	Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v2] scripts/recordmcount.{c,pl}: support
 -ffunction-sections .text.* section names
Message-ID: <YEy+6nDgy+ARup/y@kroah.com>
References: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
 <20210312221749.1248947-1-manojgupta@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210312221749.1248947-1-manojgupta@google.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=o6KG9lgK;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Mar 12, 2021 at 02:17:49PM -0800, Manoj Gupta wrote:
> From: Joe Lawrence <joe.lawrence@redhat.com>
> 
> commit 9c8e2f6d3d361439cc6744a094f1c15681b55269 upstream.
> 
> When building with -ffunction-sections, the compiler will place each
> function into its own ELF section, prefixed with ".text".  For example,
> a simple test module with functions test_module_do_work() and
> test_module_wq_func():
> 
>   % objdump --section-headers test_module.o | awk '/\.text/{print $2}'
>   .text
>   .text.test_module_do_work
>   .text.test_module_wq_func
>   .init.text
>   .exit.text
> 
> Adjust the recordmcount scripts to look for ".text" as a section name
> prefix.  This will ensure that those functions will be included in the
> __mcount_loc relocations:
> 
>   % objdump --reloc --section __mcount_loc test_module.o
>   OFFSET           TYPE              VALUE
>   0000000000000000 R_X86_64_64       .text.test_module_do_work
>   0000000000000008 R_X86_64_64       .text.test_module_wq_func
>   0000000000000010 R_X86_64_64       .init.text
> 
> Link: http://lkml.kernel.org/r/1542745158-25392-2-git-send-email-joe.lawrence@redhat.com
> 
> Signed-off-by: Joe Lawrence <joe.lawrence@redhat.com>
> Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> 
> [Manoj: Resolve conflict on 4.4.y/4.9.y because of missing 42c269c88dc1]
> Signed-off-by: Manoj Gupta <manojgupta@google.com>
> ---
> 
> Changes v1 -> v2:
>   Change "nc" to "Manoj"

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEy%2B6nDgy%2BARup/y%40kroah.com.
