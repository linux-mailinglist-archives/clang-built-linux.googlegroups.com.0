Return-Path: <clang-built-linux+bncBCIO53XE7YHBBIGVYXZAKGQE6KOBODA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B6159169106
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 18:53:37 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id h14sf3120507pgd.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 09:53:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582394016; cv=pass;
        d=google.com; s=arc-20160816;
        b=NcAkQrjELKzwAfD03BZlhK3TvNlJ5PX2PO4HINoDOy4tdnCIej21YxBpCcU0KymTlY
         ETdvzdqlPRiCniX1A7ZWUfql0F4QaSRZCkRqbGfxvYyokoqB7xl9VU1sfrFvplh3Vu6M
         z5vG89me8fAdV3DE/cCCYMFYlalKDDbEp9WRlXuJn808HZwOMqRROrFIGY7US7QX6Hgh
         aJaRs7wYt4uc/zEBwN9RKi3cPOG/OQca/FAB9brbptQGoK6WoAU6gGpRxbFsOh1bFahs
         hSqrRwAYXF0QpAjl0QtiWBHKVrW/kzvhhWiGhKYBrzpcfH8LsWZNwLJmIzTvn4soDexS
         IobQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=eI1al2DEQc09CMKv6gVAT6IiXnXq6COqpMpPqTFoNFA=;
        b=soqznZf3JhsXo6T2Evi68Gp10gbWrMH47AoADriR91qQ/myyfltvtoE4atlEPEGmti
         foD6KJ8lhwbJS83fh/CXP8tDy0oVoOni1019ozTSd7SB4NxYQsrXyqpk9mr9f7gprOf8
         kGx1hfmjGK1gpxSF0raATkBgyr4e6W9sxSFUof0PFZRaGFdLhRYffN5I3Uc9iWnxzVaA
         8XAe0TeGzFWP6+NGDFW1X5fJD1JAjrVdCo88SRSU9jfpGM4oG5VoTHkXD3epM4bgZ+7x
         h6MHMcXWVqUNYm9V9GmDVKjKSgn35XjLWZQHdLfNZucvdpxeOF/aezth63XMJgcjXcx3
         4HjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ed0YXDpl;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eI1al2DEQc09CMKv6gVAT6IiXnXq6COqpMpPqTFoNFA=;
        b=W9lOFabcjbgDtGKx+MCcjYF1hcEYA/bAdhkhTp3Pdwk5++oAv4gZdx7+kBMfha2iXE
         0tFI+OHRwQDWRPhyE93kuuO3PYac8Dc9fq7JvLjonGuZvT4274nmLVVjOiWexZdaQUlY
         z0ZROivogguaeEw0noAlRc6iePImd4SQlSlTmHqOtLPWI1OBJ0Ctu8vWcoi0JOGyn5xZ
         a0Pkyar764WUDejpeoyQgPjBBONPMrLK2Wpb0vbVkBgptzq9cxuCJ/ZEHDZRPNqTHUf4
         VKTFtpNwldOH/jm9vkSOH07fKnujwZIhjdYbXX9ZLTtpk8WwPRqZHYJ2T5LLnxpY370e
         jz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eI1al2DEQc09CMKv6gVAT6IiXnXq6COqpMpPqTFoNFA=;
        b=g0QO4sVzRRQ9AQ1FwlzQ3sqfRMmmCdQK2QELjIsYa5odL1+QeclL4RlZL4Ex63dG6a
         8Oq126tBkFdclpVSh78OUpMXhlg8781c01jOg8VBGOBlEOmY684U7D4rKifffeURWnb3
         rMWoJiAeEjx45KMOyQktOWoRlpR3oYE8u89EvwmGRlNp+zX0sbZbRyEZbYzg2ygZrgPG
         qHDD6eythRtRBwReLfjeoph/AAHh2Fxzh19VC/efBsHIkYCfXoSJkXL/q8tgQKxYPo6Y
         AvZ/pPAQl3MdgNCOT2i0SpjQgh+4hZWPBuuQJi2h9P8E/1AOqfiXeaGT+pjbBgbrVfT4
         R6iA==
X-Gm-Message-State: APjAAAVlKKga6VGfTwSQ7BEdZk1fgUpfNKJbuSyh00Ne1clC4eYR2Qyz
	xA0AJVKg18OSSMYK656be/4=
X-Google-Smtp-Source: APXvYqyZeI7F+LjKNBP+CH3h2LcGtFxukJm1AS+aZVnhPyEa5FICm9LM/e1XKqTxAObAslHdIE+8Yw==
X-Received: by 2002:a63:5826:: with SMTP id m38mr45731213pgb.191.1582394016368;
        Sat, 22 Feb 2020 09:53:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1bc6:: with SMTP id r6ls1886702pjr.1.canary-gmail;
 Sat, 22 Feb 2020 09:53:36 -0800 (PST)
X-Received: by 2002:a17:902:7006:: with SMTP id y6mr43590609plk.84.1582394015932;
        Sat, 22 Feb 2020 09:53:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582394015; cv=none;
        d=google.com; s=arc-20160816;
        b=UJQWLboIeW9oBtyxfQM9aj3Ml9eekwtG29qwbSh0eLuMxaJQP5ZqJYeeKraFP6gavX
         ako+laLwmA9RS5R0fxv0VKlJInIpJU9Qvs64Ma8+d0yJxL5u+Yn06UOJtB5wrsQWHSnO
         SSYPlUTR1sjmehdITDQqI4pIE//y35VATxWkvG5MGhoYEwNmz58o3YAtvu5ztO4Urzoa
         I5/Xb4AnudYkB+frYe7v+S6WzTZx+CGweGYnYk1t61U7nuqcBNGPsw6wOGgIqVt9L6+o
         2w3UXsiHl1VefjJ7GmN81wFAndwx38C+JLMqoyJCyG9IzCT/Mzq1n/xwIMD7pQMA3A7F
         dHyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=OoXYjbkbmqVWu6iVaF4lgXs2+HYn6dbDpIOR72en5t4=;
        b=Maj6QPQzpc3KbNfQXev7rdsaoxqUrx1vrUP9kEE3Bw1mWef/Zv7zXApNoYS9/+vw9X
         E1xt6DQxxGiYQCXCo53NEkFlN5MXqdIzqScap1p9Fn1WuzSNLzSFNjFE1hAnW0987b/l
         K39PB+v0sDOgptNAcMOCaBhEQySml1PnZXf8WkPeOdtpPDiBmWOODZr29Ca4MFKqQjZP
         NRD2BXbojttB53pKjsW22/1CXQKwiPPbL1AkFJf1CmtdHbNNFrBbFUYHdNXYTqqpcylY
         nwYGTopSragw5kSxPItGUVSGcLQkdBxFOciKOH2u1SKt7HwfGz7sMFlznwyg+yt61bT7
         tDSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ed0YXDpl;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id t34si403967pjb.3.2020.02.22.09.53.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 09:53:35 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id c188so5053107qkg.4
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 09:53:35 -0800 (PST)
X-Received: by 2002:a37:6197:: with SMTP id v145mr39509968qkb.443.1582394014922;
        Sat, 22 Feb 2020 09:53:34 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id j17sm3258912qke.69.2020.02.22.09.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 09:53:34 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Feb 2020 12:53:32 -0500
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222175332.GA3610600@rani.riverdale.lan>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074242.GA17358@ubuntu-m2-xlarge-x86>
 <20200222153747.GA3234293@rani.riverdale.lan>
 <20200222164419.GB3326744@rani.riverdale.lan>
 <20200222172948.GC11284@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222172948.GC11284@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ed0YXDpl;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
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

On Sat, Feb 22, 2020 at 06:29:48PM +0100, Borislav Petkov wrote:
> On Sat, Feb 22, 2020 at 11:44:20AM -0500, Arvind Sankar wrote:
> > Boris, should I send the fix as a diff to the current patch in tip, or
> > as a fresh one that can replace it?
> 
> The offending commit is the top commit on tip:x86/boot so I'll merge
> your new one with it and thus "convert" the former one into the new one
> discarding .eh_frame only.
> 
> Thx.
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> https://people.kernel.org/tglx/notes-about-netiquette

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222175332.GA3610600%40rani.riverdale.lan.
