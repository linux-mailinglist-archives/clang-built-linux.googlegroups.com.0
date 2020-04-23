Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBMM7Q32QKGQEH434LGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 313451B5BCF
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 14:53:06 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id y71sf2294789lff.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 05:53:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587646385; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lh3LRz6oKaxf3Fzeq97GKEGnA7M/nvmHJFd25Ia4xYNo0RMq5is0ApbfYC70PEH90T
         Axr7Q3+0YB4anByLJAlwZwDbTkTxwhp0Y7GHe0xak0h+RldLJA/6ofEPqbpN6pC+d8wU
         B80e7pMZusIT+uY6ek9HbfjmShFeSvr7zF+p3abXiujyD9l8tweWva5NyEWwZKSvfr62
         YE0PwPK1HnT0kU9SQJytkuDjhWNUprQhCYhbDDpHMHxcj8Q6i2ICQ/v9d7sS+yw4uR0p
         GGb1/bb3wI7zd1VR5LHVanZ3myIjZexnlSX6dUZoCC7Am7ygbZz52YhYfVtnU+6pJLLG
         VIkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vJ5ENaH5xSMePIrRLwnfZbS1VsssLX6dEwXLhpeFp+4=;
        b=Cs4MeaWPqg+6IwJUUjgANCXaOb1/XYxBeXdR8n4tKcPukSwMa4nAmBXhnk1j4ZLOr0
         P0FY/hVikROUoNTrOB8I4pgUhjqRHOi/BS5X7GbGMiME2yLde15RxOQMLs/6UmbBkXsn
         UxsAyBP41yketIl+6ft3oD7jwcT2VKYyJ4+heXncNVuaIOUeQpDDttC2sOsxA9U61IoV
         Z7qKWh6faV++CNHppkK5gDqfr55nR0szDQ4R5A4Ml6k2SmHzFAsoF8iMxlWlSn96YjTo
         vuExL2vK0m6FenCr5Od3DKag1x3zUKwZzkdUeG6QxVHdmdeRvrKy41zJWDpaXZrbDDZI
         f9Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=FgbhkLeT;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vJ5ENaH5xSMePIrRLwnfZbS1VsssLX6dEwXLhpeFp+4=;
        b=C7MvQa/A+/qtN1Dzi5Mt+yRBMBV9Y7nscCu2egktaZe1AUt8mYR4sEf3qrxmvsnqev
         uXMiNWfyj2+xSIj7sObABeuz+hApGiYVLJjcqq0nzAf6CLFr/ShE+isd7s6El63vtHWH
         YWr3A/QqpKj0OMf7fm3pratocqcVsRhpdCJ4kJyC2LPA1UlfUaGrxVduX1qGHptCqCjB
         x31WJO5QPja5amdzxERes0ZQVP+qNmMYEDr2uYq5n30ROi+DZ6AVKJLZROfPjohIZsRm
         6SDrqdOXSD3CxdaLMTRlTsa9D6Apc4iquBNghP3NCoTR7IrwIfrD1DpZu4QuRjBw2uvC
         6OwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vJ5ENaH5xSMePIrRLwnfZbS1VsssLX6dEwXLhpeFp+4=;
        b=k5P99AZbLw5/4hub4LcVmjNWGVj1iaSq189OKECJbaVGW2PeeuqErGWhdWNMNGRsRA
         aBfnWSeEYrh/k5zXlGWJVoLR8qY8ACvkDmbbPIXGuFUQi7IjGW29vAVpEgNFdxhnPLNn
         Dh4ihKFxQDvL2tDnc3E1B0cPrIWiZrCXn8P7TlREPnaiori6FntIoQdaPn2Izbx5RCbi
         zIQ/iAN3gQBsN7AdxmsZtQs4cByWUPePHtHf0rLUXhXL8FVhYWHhhT39zXDEHOjqupcX
         Nd20AtSwbRWQE+VVUCTGtPHKltGXLIJL8AWkLKvElxq3qZjjCNIula0XnEkdKgmq4OLi
         UpeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua/VKrMSc4jzGqEB/Hcqt7sBJib1tHqvrr7KXlRB7n6Q4sKXukm
	rf7/OcD8XzZEo9wBIStkHbk=
X-Google-Smtp-Source: APiQypK6jaoaRcAQrKTEB9pYr7wXuA9XXtM6hxzU0JPD3qVivf3MdzR5kG0ec72qFuyuctHNJYge5A==
X-Received: by 2002:ac2:5474:: with SMTP id e20mr2399713lfn.200.1587646385737;
        Thu, 23 Apr 2020 05:53:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c310:: with SMTP id t16ls1242358lff.2.gmail; Thu, 23 Apr
 2020 05:53:04 -0700 (PDT)
X-Received: by 2002:a19:1c3:: with SMTP id 186mr2328901lfb.191.1587646384905;
        Thu, 23 Apr 2020 05:53:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587646384; cv=none;
        d=google.com; s=arc-20160816;
        b=QO8b+F5x1hxyd5ldAiXsJUKO4Rbhi3kdQKfx6AFGFTUcr0IN4viu/7XJpA/tsvOP96
         38U+aTUXGGQwrriF7hDLcPdAgWvaxTZ3YKf27gYhkhUxUICphlGxvyW/GoaGNog22aDF
         R9Qqylo9UGVNMvfrL5Z3ucxgbqmgM5kV6aQfgAKR8whyuYmiUqVPpDRv34K0pg1DKEQv
         prgOtfZGuSRA9lGPdN2J9bzcj0H2mhvCuRJSDO9WPXpT6M0QtRBqfk6WmAwW+uB8CI15
         e1g76rA3ObvhMi9zZ74k5X+yNUlIwz/q3d7Kd0ctmUlsYxQUzp6sKjeQIHfAjp8PesyB
         6xWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=it7YfjrBkFGF3p2JisRo1d2KSr52lGoWqrIrfXtjOBU=;
        b=V/0ftsBMTsJF9sYH5pzACDxkkdM7V8TwWmdFpR1AHClvsCbflrZOq2fsVD+bmv6Upm
         lFAZ438irKPyFDQOuZOBxxSwgx4md10d0NyWPmM5DdyuOslzfYVhpsIISei4dsqfUasY
         B7fGXYzbwYuTUV5Ntx+3PMUXqjEQM2Vn0voNsOp0d8bhaf2CU9pkrQfTFY1uyZ84yEUz
         WukgxdqimLlyIyYG2cBYEkQuOYv++MrpRy2+2PISNXFGzuq1Oi2QbVUuL6fMUCRy3DXl
         irPrsa8jmmMCu1GM5JOR7YMSBV6NmJhRjb2KcNt53mj8wOSHONDSB9oHMAtm8/fvuUAN
         Fi9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=FgbhkLeT;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id j13si162031lfj.1.2020.04.23.05.53.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 05:53:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F0D2E00329C23FFFEA6A903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:2e00:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id F2CA91EC0D82;
	Thu, 23 Apr 2020 14:53:03 +0200 (CEST)
Date: Thu, 23 Apr 2020 14:53:00 +0200
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
Message-ID: <20200423125300.GC26021@zn.tnic>
References: <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=FgbhkLeT;       spf=pass
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

On Wed, Apr 22, 2020 at 03:57:34PM -0700, Nick Desaulniers wrote:
> *gunshots ring out, across the ghetto that is LKML, reminding you that
> you've reposted in the wrong text formatting*

Ghetto? You mean more like a bazaar with a lot and a lot of loud people
in it... :-)))

> Would be helpful if I actually took the time to RTFM; just dealing
> with a lot of constant nonsense regressions lately.  One day, I'll be
> able to sip margaritas one the roof without anyone noticing I'm not
> working...one day.

Dude, you stole my dream!

:-)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423125300.GC26021%40zn.tnic.
