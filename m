Return-Path: <clang-built-linux+bncBC42V7FQ3YARBO4ST72AKGQE6HIHMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f59.google.com (mail-ed1-f59.google.com [209.85.208.59])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AC519E184
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 01:39:39 +0200 (CEST)
Received: by mail-ed1-f59.google.com with SMTP id f19sf6871182edt.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 16:39:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585957179; cv=pass;
        d=google.com; s=arc-20160816;
        b=DSeMxt+z6giHMYVZZEZcw2ETq39FY4FuRhTYKOwrWvzIIyrcCh/VyFW8fGMi3MT3Pm
         U/NFfDWrJwJ00S0eOi9rd+gMrPrBZ82CWX+eGerQyep3ZF/+MUHe7OW0jGR8BpMch8AQ
         M3VQ/GkbYTmpQTuzC0e+h83oTPLF53T/6biK6RhVq8Xa3gxxSVvkwimiwoWYOIzLdj2v
         ityQAUYH+8IW5hEGYlMcNW/io3fcPHMqb2g//3JIooAgZzTGEXJsF+5TmKM/x+Spw0cM
         MITUJRx1MwBOOHkIh6bUjZ66JR4gwXv9vnIp2i9LLILxmCQAqWeR+WhgtjSNJCughQaC
         UgcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=9FSbFl+exdLclYxfIF2MnZ3vRSRcdb1rSheXO1tAaS8=;
        b=mc+uM/VxaVX81OhMo/f55m75ylUDOFZqhT7xKYHzYbiQJeItWlgXtzIGJibwKMSl7N
         n9eJ9kiaE25ax+a62erACqaXi26ebpuBJOpZ9PUdVIH9jFMRoko28Ee/6RoHxKQbryrT
         JbJSkhELn8bf0mK5gqJ/0JpsAD7VZzhz1SV16+1mwSXLgHpUFa+7Jhl6jSW1B/r+vGZ3
         OvWUaeyk/lshYla+LbBD9fWaHvHbEKFC6q/kOpRfZQSXOraisXj7eEe0YWGVxXky6EJm
         WKptux2ZiyksnxeGeSnxhI0KCS7tZXk91RrjcrFVlvPaIJ/E9cBDiBKBZh3ymcaZ1cWz
         H2DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 2002:c35c:fd02::1 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9FSbFl+exdLclYxfIF2MnZ3vRSRcdb1rSheXO1tAaS8=;
        b=p3NFRRmvTp8umT7+1S2GuS7LnFy7OnW/CZVPp5rWVyOzBYeo9yIujuTWFAAwLLpIfO
         RxwNofJoVj35KLVOElCAds4t+4WeVwpr9HAWP/LkVVEjnuoXheG+fcndYrTh0RerLXlB
         6HAjgccJRvFIzCSc1cafzoV99RRcr76sKc1/qfVf5RxNTgN5L3xfhPMF3TEOuaCP7BYK
         yRuvIriWaySF8AZmfcz9DHds9wuCSDKSuJOoUGqFCLQRiFCybQLNSQ3vVlIpFgj6hH/m
         c86nh2KVSoMieWxV9u1Usl/Xc6vajnvBLhwrpPAEo6aFTWlcLPiH7x/iDtPzl5sSnm7n
         UXfA==
X-Gm-Message-State: AGi0PuYnWnAM3cvvt4s7pr57qp4uPy0qAynhJII++akS4UQIJzi/gzhc
	AExH4w/v5FD0du0HkDYf8z0=
X-Google-Smtp-Source: APiQypJ8UdoVJR4HNTzoZKoweERXp8QQkw2qBp2HIb/77h4IwiLgjA7HUY2vK6iQWMHGvRLkoSEV6w==
X-Received: by 2002:a17:906:4ac1:: with SMTP id u1mr4212957ejt.25.1585957179391;
        Fri, 03 Apr 2020 16:39:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f102:: with SMTP id gv2ls4644503ejb.0.gmail; Fri, 03
 Apr 2020 16:39:38 -0700 (PDT)
X-Received: by 2002:a17:907:b1a:: with SMTP id h26mr10229359ejl.321.1585957178658;
        Fri, 03 Apr 2020 16:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585957178; cv=none;
        d=google.com; s=arc-20160816;
        b=POPpB7EJCCF898KJDWVhx0Nz/GkuOZXZMc9CoRGHP0s92AgFjANshdfydyTwafuDz9
         mrWPP981697eLVSCxUTSk+yaT+NaYD6GWLcHMfUvYcp7BBwFEzD8GjdHm+Dkl4qbjJQO
         /mEg/5EHJA6ieMlLk7itDtvRWBNDysTtgqWBUgrfoq1EPRhRLZfm6oCxzop3/h3SqT3J
         onKgNK3YByP3b/vQQR8VqQpWog1ClWQfSf2BMPIqSFnZLPorvhGd8wdig8pzqXDUl5YG
         DJRkwHng18V8tdBT3R6PWaFFPzZci086TO/3/nklm9/949wzVn6zLwbOqoc7LYd2GdIJ
         6riQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=R1B0MSFOq8TyAHPPhC7Jlf1nDSgixn7B65VndC02zxE=;
        b=gfHHibyR2Z8WasZZv5XDkaAW34DkfmVG42eIgwI4XXuQ71CNwPYsH9Bh1luGbrQEZn
         Rg68qrH6mtYB8kp1COxDlbvgOWOjfGzfnq3w5ybSsEpLuzut0fAxZ3Y+2craUTWdlAQi
         HQCrYve/g+BQXG6qAT1sKbzrcPNZpNV16lV/3fRe3kVOtNQGqBkdEKHEJ8VRScACyXO6
         N+39By9xdXIxht29+kWIOUUD7b6HGIocXpyyz+nbD0hqhpuccO07z/kCTZQ/oSDTov9x
         Oj76J9NfDByB2yKRwCH/1q9HM/iQ1Zk8PsjpL9hwbCMVDQWKmYKYWPBQ2T/ljjPD/XWt
         ruJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 2002:c35c:fd02::1 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk. [2002:c35c:fd02::1])
        by gmr-mx.google.com with ESMTPS id k14si331845ejb.1.2020.04.03.16.39.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 16:39:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 2002:c35c:fd02::1 as permitted sender) client-ip=2002:c35c:fd02::1;
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKVuG-009xUJ-1w; Fri, 03 Apr 2020 23:39:24 +0000
Date: Sat, 4 Apr 2020 00:39:24 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Oleg Nesterov <oleg@redhat.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] x86: signal: move save_altstack_ex out of generic
 headers
Message-ID: <20200403233924.GM23230@ZenIV.linux.org.uk>
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200403231611.81444-1-ndesaulniers@google.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Original-Sender: viro@zeniv.linux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of viro@ftp.linux.org.uk designates
 2002:c35c:fd02::1 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
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

On Fri, Apr 03, 2020 at 04:16:06PM -0700, Nick Desaulniers wrote:
> In some configurations (clang+KASAN), sas_ss_reset() may emit calls to
> memset().  This is a problem for SMAP protections on x86, which should
> try to minimize calls to any function not already on short whitelist, in
> order to prevent leaking AC flags or being used as a gadget.
> 
> Linus noted that unsafe_save_altstack() only has callsites in the
> arch-specific arch/x86/kernel/signal.c, and shouldn't be defined in arch
> independent headers.
> 
> Split the logic of unsafe_save_altstack() into two, and move the definitions
> to arch/x86/include/asm/sigframe.h.  This does less work with the SMAP
> guards down.

Just move that into signal_delivered() and that's it.  SMAP or no SMAP -
doing that until the sigframe is set and we are committed to entering
the handler is wrong.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403233924.GM23230%40ZenIV.linux.org.uk.
