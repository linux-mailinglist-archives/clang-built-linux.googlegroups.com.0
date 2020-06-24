Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBDG6ZP3QKGQETWCDLDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0EA206C38
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:13:34 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id m63sf796021pje.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 23:13:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592979213; cv=pass;
        d=google.com; s=arc-20160816;
        b=njfMLBLv9p0qprlViJSuHtFFKtwUebHH1Zk2idt2kGuFsqW8BDzQhc9KA2II/3v/nh
         98Y9worAKcHTAIYn5BrZDOKPT7GDI6AiuWXp18KH3KsuTj3UXmHcSl4iCJT73FwbnXG1
         AiZLgLrPgE49aJJGaCQBckflgtSroHeonbLTNQ/LWE0aXcU7DRZSh58r3TJlrL05c798
         acA6zYJh35dkhmqfR4Bivv+/hELy8YDU5bASS99LxyiIx969Rel7btvmqQ4qfOlFodW8
         mJQzU6NtQNhxPLwEYwtWcHRdCA5EFX9LvSW+43o+LMB1BcQJB1jnbKIeEHwB95/hb/ND
         Vasw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zSuvlFHMqGMdSwMh8yCfzUXBZL6q560l1gLMjOSLtK0=;
        b=lDq/CSY4AgBaofIwrXmWjTOb/w/5JJs4xjvbiRaZ/HWrHBrW59bBz6doaJTfdtvUj4
         xv6ENC/UYTcWpClojePcPaJUQdQBmaSqgS+485mmnM+xMgjKVvhaVp25G1Y1XyXvTZgF
         g0aAkGDHa27H5aarQaQVq08nt0ZXB5I04lw5P0DKdtrw/Mf5RHMSoN05OaE+dGgz7fn3
         zwIM7fzdmm7fZzMT1so+DBSChh2Ggq2n+iAQbEj3s6BVtwNJjhXj/8W+6U2GPNkcb6Cm
         cf2zs3lfd0gpQJevjSIZ2AMocSMB/MznS3KbXTHFTUCW1ZC1RZV3yWqBMgH3KcrE5rSV
         AFzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RD+IX9Yy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zSuvlFHMqGMdSwMh8yCfzUXBZL6q560l1gLMjOSLtK0=;
        b=FnkRyNf/cBrGSfUES2pFWK5413Bao0U25GMn3vnoOXrN4Ghq29JTDRSmF+0C+a4BmJ
         1+fQU80Ct2w/hx3zqh39+z/pEeDXBSLrqBZjhOK49kVNi2kbOgJ39aVX/ZKmVwp+3PqG
         xbywZpf8xwHzpFlefL0+epabC57Bh388m2oZXdDSd+0qEdAg0/3uPZAeOZPSwOpu+vRA
         w8h7jIiqe19i14hzU1EGF9HyYqHWhudp5WH+hVGiWJEEbWiP3y6Kdy1SUeg+5hUfLjKa
         2J3LbB23Y4iVUB1VlB1jTlqGmmn047Z5upqrWCZhhYLT8c9gpPjPrUJieQUqajxNPUSL
         49Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zSuvlFHMqGMdSwMh8yCfzUXBZL6q560l1gLMjOSLtK0=;
        b=qpDxVlWU2s0SL2oH3jm3VxnsJG1dPflEqSFikzcf12T/wEJfV1GGmHCua0FsFxsdJP
         NENwK778/7YxcoAE4zpf+Gv2VBQM3DfWTyjy/q/wtrB8wOiDJG9qU/cT8DhmAm7v2bQO
         nkrdH+vER4o3MhNgdAh0mGc+Dpqw/CfnCrGCQ90kE9SuHzCKtthd9D02j35wsLGDSL4v
         E9VzSCG/OL7MPDjYTkPLK5b2USW+ehu47KWsLKMSgYoza1VL5r5ZAIK3nQLqonap+7xz
         616VoDsDGcHkuywtlMs7ePujOJeiB4f/wxMYBMwXA2HTom0VWHEUmK3zLZ+hSFnahgp5
         m/6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319zUqqKHd59aiYL4ITxrKnmHkMQJt+kKRpk5dFNLQF1Q2Y/oV4
	8Ggr8a6lVYZjvOTXhQpk7kM=
X-Google-Smtp-Source: ABdhPJxgnQRgmTCFzCg0RrOQ5I8cC3vkRR0Mm63L/ectuHJlwhuaTghd7h9xkgLQ2+yv9BL3FoeD6A==
X-Received: by 2002:a63:5b63:: with SMTP id l35mr20087960pgm.34.1592979213060;
        Tue, 23 Jun 2020 23:13:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d415:: with SMTP id a21ls393801pgh.10.gmail; Tue, 23 Jun
 2020 23:13:32 -0700 (PDT)
X-Received: by 2002:a63:308:: with SMTP id 8mr21595212pgd.112.1592979212592;
        Tue, 23 Jun 2020 23:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592979212; cv=none;
        d=google.com; s=arc-20160816;
        b=kphEsBSxzHsflYkZGkiS1xJBGQKuoBBpb3VkR0bzAQlFgp19VSgixVrRVeSOMxpzT1
         s74nW2LHExkieTW7z4gF+o4YxsNcoP2KBln8ta7YYVDxfght98/x/ZSn5nyfgwPlKKir
         42texToDUFAjpZxwEPcmHV660bQjtBSZzYQBVchMC4QtEANBmREjETg4mH7Ndi0zM2GO
         Em40dagsp34LqIeHoiRzSySL1hb9qxGG7T8ORR+O8CirIUysl03lm36Nt2E/Cp7E7g5s
         814CEQBj1oTwFj8s6I5wHcmwQMApS5FdJqfJQiZ6aUK4spDw0RIxVfQOc8dS70q4jtkS
         Oa1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V00rjVJAcvFtWl4aEVVhZTm+a9WDbJ6aIM5jstyAJoY=;
        b=UliOtkGv5PeBjgjyhyopLBF//2SrjEdNPKcEIb86b7GoiVjhMZ0Gl/xtgMKOqDOAYT
         OyEfFAXrZG756A48hY7lrlpMM4M6h1W79mnuQwZkxqsPoJZGui7V24/P4aQvxUc4emTp
         2XAUJh9bUMovRPOZHkDqtT+qCQV/EezJO2aLWcH+ild4CrZ7WSbhePBtUFWU/BW7MYME
         jTGZOj7AM4sddl+CnXmWlT+bWxxzCh+yMl1xyG6jPnIZr+jhCDdHw9EM+9BXFlhwlA4A
         0KcHqJmLCtN96O0oWBgqIx3iu4opFJ2xXcyw7FsGk9E7qfowIzpNp3sln3eK83hTmsbk
         C9Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RD+IX9Yy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p7si1783pjl.0.2020.06.23.23.13.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 23:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B39532078A;
	Wed, 24 Jun 2020 06:13:31 +0000 (UTC)
Date: Wed, 24 Jun 2020 08:13:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
Message-ID: <20200624061331.GB933050@kroah.com>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006231610.4993DC5@keescook>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RD+IX9Yy;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Jun 23, 2020 at 04:10:23PM -0700, Kees Cook wrote:
> On Fri, May 29, 2020 at 01:03:43PM -0700, Kees Cook wrote:
> > Hi Greg,
> > 
> > Can you please apply these patches to your drivers/misc tree for LKDTM?
> > It's mostly a collection of fixes and improvements and tweaks to the
> > selftest integration.
> 
> Friendly ping -- we're past -rc2 now. :)

$ mdfrm -c ~/mail/todo/
1970 messages in /home/gregkh/mail/todo/

You are in good company, give me some time to catch up please...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624061331.GB933050%40kroah.com.
