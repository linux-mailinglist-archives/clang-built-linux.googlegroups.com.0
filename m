Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBMVSQL2QKGQE7EBECLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B47AC1B4D3E
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 21:21:22 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id w19sf88266ljw.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 12:21:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587583282; cv=pass;
        d=google.com; s=arc-20160816;
        b=JSjAqT4nS/rtlkEcHQXV+P50T2U5qtuJEz2XdKmByJqtb78K8DrWO/rQhvH9yNTUig
         mfKxkFq9bodSTCvfZleRL9ep765CLGv//HaLvYGBt2EMEIxQRJF927m/DcoJbuXzyUCw
         irNeBZ6rNg2ZTxa0//yvCBeKUS/kRFaiP7BGP9iBD7PcUQdyswT94vgnqJgRdIVlLR73
         BkacnY06zA/roINnlcipd4QRgNNPI54n6/Z74XT/Y5gVZHXjLhXoPJFA/OrZMdsCof3n
         cFSRpseWY3fKc7M7kPAIiBe7c+PtYA5lu3VODonNPgp4SoTOjno/xtjvlF8C3aulV3Fk
         7ZiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=F4ae/wCFg634fSJ3lp1t1ZZaFV2i8XwrKOTZPuyGBSw=;
        b=SKV0GaLLIsJQmgPn5Pu19/Fs54y/muZzPUIJ/vgS4OSwSIJttUQIJzU/Oz8guOWQEh
         vMdLP1X1NyvGqS5AWQa5AKrzI1Cltz2WyF2UIkXIZMpANGuG5iOdp0tjLV26tpy+mTRo
         xdVrcQRH30cRFF6z5IHN307NkdEgV05OsUzhPNrVuGif+upxsmoZKAV+n4TDt2oWCQB3
         KawdBCRpZVX2MB4nCX16+g//+dR7UWAK8dj0O34Uxvud5EFg8dkYthktTtwXYDXodT2A
         pmkxgaWOFayAeWwYQs+ldMsrIjWgsNxtUCb9416ILMwqEuy46Eq4N7d7HSB4PQIPHc64
         Ip2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=WU6VTXSf;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F4ae/wCFg634fSJ3lp1t1ZZaFV2i8XwrKOTZPuyGBSw=;
        b=UyTXgalS7RX9tuhKa7LGFPXGYXOfV9lwDfyKxOFCeDpWKVwKEDBL8M8MO0Z3EznM73
         tGkW8KWsPQyFfGpf5gzVWnqxC+/E9lcbz9Gn7C7eyeV4xqu2VEPc/gOWlteNFDLt1gQd
         NPx7BnulYenjzalr01OdtanTgaH6nt8lCrushNv7RK3tL11GvZ4gpfzufyiHNeFcerju
         ylpYflG76F32lSao9TzfGgJgsGSQKWzV335rOHi9vYWHLOLeAxXsELNK/egaxTy3V58s
         EvNF1zAcplFGzE4CJOPuASg182o8WdI9IO8wJkJEWYLsqRFuOm81+smCP5oOBTy2MHVS
         U5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F4ae/wCFg634fSJ3lp1t1ZZaFV2i8XwrKOTZPuyGBSw=;
        b=NpNeGKBzXaoGlQNgIouY9gLn/Uqnj27ABHdZZCezq5FZcqa7pxWw1qp6nejNn1y14p
         jVpzwSt6x98XjoSqsYMUJk72fXCpgkvkdt+JzTJRODLi7ukxXQvuWbwRpaJ6j3FXXpYY
         ZIKBPuJEGGMaYU0xNO4yBIn+L0jeQzlnqh0z174hRigEdv8RvgfFrYE9yXYV+v1P3PLR
         fkuOlXpUMp0w0hCkvSukxICLB7JOz4ZDVXYMQT7wPfaH0hOzUvbTk7uE8arMPG7BfHlk
         XCAGPDd27X1HFiSwJUyG2zT0zzpTmgmwQiOGGkALoe7LzdgFu2ZwbXD30FUsaA9z7JNG
         WlsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYRs2K6MOOHx3i4rf8uGIE+sposILX6jcnL1KujABoe3G2SbmrW
	Q5x0LCjvQYw0rLJtxfOzGpw=
X-Google-Smtp-Source: APiQypJwwV5LNAPJn8m8YWDt7N1436J57CNPlsozQEGdhGjAyaS8NmUoEwDxtnJaJf1lwslEus84CA==
X-Received: by 2002:a2e:a313:: with SMTP id l19mr199472lje.133.1587583282179;
        Wed, 22 Apr 2020 12:21:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:74f:: with SMTP id 76ls728218lfh.0.gmail; Wed, 22 Apr
 2020 12:21:21 -0700 (PDT)
X-Received: by 2002:a19:f206:: with SMTP id q6mr48123lfh.85.1587583281611;
        Wed, 22 Apr 2020 12:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587583281; cv=none;
        d=google.com; s=arc-20160816;
        b=wgk7qzUQ1KvY7Iz+xWoRLDQcyy3b1uZnMdNqMB1+ACOkwHaiBpfXxDLyqzYw/TdR1y
         qILbluBKlMQs6PcpCcYEjXaoc5KSpQ8MxnQ5J3GZrmmBplBgJWmfILTJ+zpTZEHzSvBO
         NEfTYgj1KP59HyLHK5TdSEFlZbbKilMSF+g/v9XlkkBjteAMQcOTHoliPCl2AXdM42I+
         iRlfXEyeuo8/Ul/yIi6xrhENYz3AQUqkdlL910BILAF9KAKw8jJsEjS2yTAE56HPk9EV
         duDSBE3GiQrQ3sYs+YcpvNeaqIt7BzUIPyOuaONZ4K6dWD114K8PqQ6lb4DRKxepIC22
         EwWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uwppnCchAiG8ZwLKxdIRMiSv5cSPYMqUKzvWQTerwHo=;
        b=thfpSLPMeiB14WCnlh+2wDGeToBzjsbmXhvRjZHxU0IKhIXD3rrjLn6867ete8Dgah
         ZK5XfQARXwbolZ++KNsnz+SvZJt/6KAx2ZiE4gEwY/JpFpHL1GQMBAOBchSwPbepizaR
         iI+PEXZGu3fN1uS2mVWckoVAhFDbAp30a/57UC8Or53vm7r+gjhnRlTrh7RGkp5ww8CI
         M1YvBpuwOPUVc20BaUB23uie85JIV8bu3em6fdUGcJADLRMOuClOsgpOXE+rPCq5ToNf
         SwCeXHxveovvwW/0q9uZlqkEyRa18FeO4ZvqbfMG3HZMm43uDRGL9lPoE8rit59H6rau
         7p5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=WU6VTXSf;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id a21si35750lfr.4.2020.04.22.12.21.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 12:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F0DC10061F884AD77E9675A.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:c100:61f8:84ad:77e9:675a])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 9767C1EC0D41;
	Wed, 22 Apr 2020 21:21:20 +0200 (CEST)
Date: Wed, 22 Apr 2020 21:21:13 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422192113.GG26846@zn.tnic>
References: <20200417084224.GB7322@zn.tnic>
 <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=WU6VTXSf;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Apr 22, 2020 at 11:55:50AM -0700, Nick Desaulniers wrote:
> Can you add by whom?  It's not clear to me which function call in
> start_secondary modifies the stack protector guard.

How's that

        /*
         * Prevent tail call to cpu_startup_entry() because the stack protector
         * guard has been changed a couple of functions up, in
         * boot_init_stack_canary() and must not be checked before tail calling
         * another function.
         */
        asm ("");

?

> Another question.  Do we not want a stack protector at all in this
> function?  I'm not super familiar with how they work; do we not want
> them at all, or simply not to check the guard?

Not to check the guard. See the beginning of
arch/x86/include/asm/stackprotector.h about how they work.

> But if we're not going to check it, I think
> __attribute__((no_stack_protector)) applied to start_secondary might
> be a more precise fix.

No such attribute in gcc yet. But yes, this came up a bit upthread, you
can go back in time for details. :)

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422192113.GG26846%40zn.tnic.
