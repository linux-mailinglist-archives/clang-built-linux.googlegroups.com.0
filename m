Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTUVYXZAKGQE2P3QBBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D898F168FC9
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 16:37:52 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id x10sf3227118pfn.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 07:37:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582385871; cv=pass;
        d=google.com; s=arc-20160816;
        b=bG2ZRLZ4s5u5xVQtp8oj6RoKQzKcVhxLAmXlPYFhIhnFtO4Tig4JC7gsOpARWZa9E4
         zK+ywsUp75P5kQ+8K8Mzac1bCNyelOjZnh/mlsMHfRs2QWsiTCVH31okJIfKWXLQWSOY
         MJZLBbTeguJ0b6zrCAeD3TSfZE/YQCw940T2bMOc4zEqcv/HAWJo3/592GiLmlBf3SPV
         HNPYDtdWeFWlPbuU5dJNYbgV4ap1JaC4GFKEFbLBmUCDN5OPKHodp0nbLdy+/+fFLeDA
         9lrfpZfEoGFsDTDdF1ruN4mM/xBz9vbrpVd2vEPiPJqFVylqz67a9r90zttIVkzIneH+
         W3QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=z7REl2Zu0lFhoaOSvzv7Zs8gJCCojPb3yOmHksUxykM=;
        b=NtPyfSKC1U4Mxc8a3VkxTBx9+BWQ+nHgKjYlBsaQ0A8gc0yqGNju3IzKMS88Pjv/b5
         zsqr9GOH+lQU2+z/gIx2ade1UeIL8TmKQVvn+jGwRW89f1Y0ClngBRDdczD2u/5E/uwr
         Ixwjfh62xXUwntPCdz8qqyhdJUcEHa8BivNnSLzCiIL30t5hjGH6lLNCx74osHCPhHLR
         yQH4AAnELtElnVV8Q67Wl/CdRfI4vCqvosM+SAEQ9GaidoCKrEAYO0NUk75gRm/fY1VY
         m5mRnQARPIuBHYX+5gGnGqIx4BL/HCH9oSGORaWbvqW3bcFJ//mvtwPuXyV6QyEYbMqM
         3FFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KpfiRuAh;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z7REl2Zu0lFhoaOSvzv7Zs8gJCCojPb3yOmHksUxykM=;
        b=DA3YPdsHei3CVLunJy/0XKg/IlAbBMzqjka7Sd9cRrC/8cxy6kmOWLP05zl8g4utpa
         P4ZA408GKIoKjPwkvyLBHjqX6p+PPMHpDTbzoQ1XrDpfpZuUKu8gFON8uPO/eTcGxmVL
         sMxwVDd9zmMXxShI0xVHY/ZKe5fMDeB3aNWV3qhbHGK7z3LMbqqtcEshQI7IhLhuWt50
         wJjaONmmXuYm255alW69oolTr11lTCN4O0+49IPo8RnLZBo9HYRcy67xV/A16nApN3fm
         utM3SfWnyHAwEQkNrKv5t38o7L6YBbfXPKxxJekJsAxRLA2W4gMdoPDMMk0GfKyKYNGP
         2Xuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z7REl2Zu0lFhoaOSvzv7Zs8gJCCojPb3yOmHksUxykM=;
        b=RrsqPIn4G0NnrTwj3kIvOOEA9yvuuyIvZdZca2bKUvyrsmKme4wdado03Q8bGU/gZp
         SG0oufKRll7xjYA/4UoaGPG6aSBnhKtGKxpvlx3c9W7+bn0rq1Uidhc7wwwDOkK6NlYR
         /sDfVHjhvanp1LRRu8A4qJx7wzgCH6i2hrVgDLKdYxur7R0jYLP+TeEqC580oJcWPHf7
         k6aYm41tu0E1WLzYpCSQm+d6WoBKqGKFvLM4IDk3qSEa1cffIQ5c+mmgGDX58bTmt2xt
         v0Bo9sePdB5rIjmN542+SNHFtFWyX+x0j2XqhgkzKzuoyWq4y6i/o8x6GKw+CfCikFJI
         R22w==
X-Gm-Message-State: APjAAAXavKzdtRG2pQCgiN1HygsHlGT5NE9xJcXKalpmo1JgXfFwDEdY
	COeEzkfspZ9jsrPxl550tFw=
X-Google-Smtp-Source: APXvYqxCRFjcGtmvmaU8VntP5GaigbQR/cufhKCn47zYK4ThEZxWAEqTXzJ8x/RVSbdSesMdm5rzAA==
X-Received: by 2002:a17:902:d909:: with SMTP id c9mr40782341plz.337.1582385870829;
        Sat, 22 Feb 2020 07:37:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb88:: with SMTP id m8ls1838298pls.6.gmail; Sat, 22
 Feb 2020 07:37:50 -0800 (PST)
X-Received: by 2002:a17:90a:a88d:: with SMTP id h13mr9816373pjq.48.1582385870358;
        Sat, 22 Feb 2020 07:37:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582385870; cv=none;
        d=google.com; s=arc-20160816;
        b=laKHIDoerezXa5U2tR50KmjgxoOwTOY+bk8mEC+G5tLeOup/H1agf5MrKJe0o/BPhc
         82ysZUygPVEyB+Zq0k7IattAlfAbVzmA3625lU4rTsJxKVhU0MgM8FRsbvlnN9q2taGf
         +WjdP1r3dgkbekXEwTAu+Xj5KX+zjdSCzPTS0WFuOFFJJi7yKW8rtUBHyF92YEX9wsTo
         y6eE5xE3qfO/qCb4FyMi61chbuEADemyHowFqWoIDauzvXGknltkcM8aOzk5gVxhzvr2
         frVQic94jExkvEuMRXgu5WEmN6RVGmVo0PQcRy9/BJCpvuqfTMEkpu+djKwQ7xC35oWU
         xSfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=T8Q3uqcVM58l6nmcPCuCIDs6oHWPeRTAFcUT/2DRxd0=;
        b=ZSL/FnJy4J5ImHxWvaAFAGcLrRMou006r5uFHFrKrHsARmKpm/6jIQjtv+VjF9vI8C
         S4SAvMgBrUh/kk/c2Ff+aLtd4IgKLLBm+6CAGC3CAHovWec5GgOhUxKNOohixwiYNQZD
         FDqm8INtG6yTg/SQjwuOuAARJ3nRJakBduivc7AsoncMq2bYmkgdcO94r85IScYajxDW
         lCsIdJc9uI7P7jlIu4txQTK3YN9L3atgzE+67FcKMKy2bKSMRcYP/huVbY9G+/zPsoBt
         FLAJ7qiOycZJA2J+Mr2TBVvMugYHVtwJvfKkleDQKUqy/qThpcyBvG88JmE69/+bjif6
         CLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KpfiRuAh;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id j123si250936pfd.5.2020.02.22.07.37.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 07:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id f3so1854233qkh.3
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 07:37:50 -0800 (PST)
X-Received: by 2002:a05:620a:989:: with SMTP id x9mr40662809qkx.371.1582385869376;
        Sat, 22 Feb 2020 07:37:49 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id k29sm3305825qtu.54.2020.02.22.07.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 07:37:49 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Feb 2020 10:37:47 -0500
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Fangrui Song <maskray@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222153747.GA3234293@rani.riverdale.lan>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074242.GA17358@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222074242.GA17358@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KpfiRuAh;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sat, Feb 22, 2020 at 12:42:42AM -0700, Nathan Chancellor wrote:
> 
> Thanks for the clarity. With your suggestion (diff below), I see the
> following error:
> 
> arch/x86/boot/compressed/vmlinux: no symbols
> ld.lld: error: undefined symbol: ZO_input_data
> >>> referenced by arch/x86/boot/header.o:(.header+0x59)
> 
> ld.lld: error: undefined symbol: ZO_z_input_len
> >>> referenced by arch/x86/boot/header.o:(.header+0x5D)
> make[3]: *** [../arch/x86/boot/Makefile:108: arch/x86/boot/setup.elf]
> 
> It seems like the section still isn't being added?
> 
> Cheers,
> Nathan

It seems like lld also doesn't treat .symtab as special and is
discarding it, but that one is actually essential to be able to build
the bzImage.

The sections that GNU ld ends up discarding via that *(*) directive are
.dynsym, .dynstr, .gnu.hash, .eh_frame, .rela.dyn, .comment and
.dynamic.

Out of these, only .eh_frame has any significant size, and that's what
we discard in the other linker scripts (in kernel/vmlinux.lds.S and
boot/setup.ld).

It looks like it would be safest to just do
	/DISCARD/ : {
		*(.eh_frame)
	}
instead. If you can double-check that that works with lld, I can send
out a new version.

Thanks and sorry for the breakage.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222153747.GA3234293%40rani.riverdale.lan.
