Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBF5EVCBAMGQEAPWMOGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9C5337306
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 13:50:32 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id e13sf9478240wrg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 04:50:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615467031; cv=pass;
        d=google.com; s=arc-20160816;
        b=d305MIUBPYHn9IAlEpuq5KWgyULPn1gH5eM4FV1O6OkBwgRkFdIRs8aYZZsl2Ot5Z/
         MZekuwtLgfcmyU3wmcC9ILEc4REyp9V+S8NivXxfe++8tmMYWG0rDS3cWt107GdsTzL+
         XoBOlutvR/IuDSbMpEI7Q45e86mlZvlgu1ply7nKhsMH3T9niHFy9M3dnDdvciB7JhVg
         yt2qDvbaA9x8Kppe/aLVq+czaLr4MWaoVv7mkqVhGLnZ8pslAfeslRv5+A5ZXYEBgZsG
         oHgoelV6y+VS0CCV2YqPS91ImPlmYz7f6m1MJuBSrdyXI9sGJtK24EmHwkjq0tmiy04p
         dJDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yQkbUt2FcBeFMoe3lsOUyNyViKRRSUKPpWG2CE/yKF4=;
        b=lqFflgqsS81TQY8nvrX32WbhVfoUaIfQM/JhxNdbwp2qym4HocWhyrwt8bXW1isgyi
         M81GE0zUUHAsIqi4PzJ+4nERG2I74C6201/1tBuKvsVKP7X/Yjy5EVsVmZ7s2xygyWpf
         JerBHYFwRQTqqj5vfUDZJ12S7LJO1RhD9VWa8PuZRRIuNQimJaR0eDAXbVfUcrJt4JSL
         H4gPB8v43XW5xyuDfFYcTF8a3ySqRar2lXf9wjCXWhdB52MW75igwBcZUxEwf5BuFiuO
         Vo9d1Gw7viFN3XFBFrOcI+hlPgnaJ5IlMNqy1UAKwpndh7lH6AhqMBZGR8Z6ZzgbJZrE
         hFWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=oOGUaSre;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yQkbUt2FcBeFMoe3lsOUyNyViKRRSUKPpWG2CE/yKF4=;
        b=oocfIVhooFj20WrFO1cJgXlcILGmEjtr6Fbe/dkmXXDYRDzA2TB9hxUO/QInzLa2WX
         6e/gDNK5SCVVcPxj1kkuSi4u125p03u9gKu++4whDVQb3Dy4SmqMtGZQDSV9m0SPVmdG
         Lk9cirPG0QOtiJPLf5+jGID5WsZfHcE9NwSbn7flErdUP9dBIWsXIvA+lnVnxx2T0XSI
         tmJW85DtvbHAJCgyU1+4dUbYrY3N4MaQ240yGeyu4NImtb0LNoiB8jvVB8WdFQlLk8yU
         rbiwo92Jm1prhLqXoe3rWgSGtVK6H3TDs635LCN3SHqCFchPYRGslFwFDToJndk6ZoF/
         UfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yQkbUt2FcBeFMoe3lsOUyNyViKRRSUKPpWG2CE/yKF4=;
        b=X7RI2ybmxgGcpalmCpfD2FFP8Y5Rht9ShttJ0mWdcynC0w18nrj6NaR3HERCiWhxUf
         Ia3X6aXmSElaZkrIfPSh7jzjEV3Z+3VPbT4lIX2RvAXEPGbc/Acnn7XpN2hN++z8/ybJ
         ncY0OdJFq2Ldy55DP+fdL/mA4uEYyaJMBBMhde/GxFEQRfUXci1B8jPDP2wAZMyLZujJ
         pp0OQ9yW+tcz6P1qk+fuLGnKKCrGIp3CQ24xxDxPmo2a8fDqBTgVAcuwHrsbgxTMgCw8
         f6lj2cILF+V//h2q3qIjlSWCJODQzQgJDJkTc8kCHfnBDgBiYgktl4t3Ge8j8DZldoZd
         vHQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uahrxbQwtE7ZwWmwGeJuoldoOm+ZrPBkAdqoYE3WDYz7dm4r9
	oZTb/kzMqbUwrOiTFJtzSIw=
X-Google-Smtp-Source: ABdhPJzKQyWB8YM6P41EJqEIzYsdj/Tdl3LV3f0Zws8oGuXde6dtKHNE0WUmoDTK2y1AtbfV/wEzbQ==
X-Received: by 2002:a1c:5f89:: with SMTP id t131mr7822966wmb.173.1615467031781;
        Thu, 11 Mar 2021 04:50:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1e6:: with SMTP id g6ls5569739wrd.3.gmail; Thu, 11 Mar
 2021 04:50:30 -0800 (PST)
X-Received: by 2002:adf:c64a:: with SMTP id u10mr8590666wrg.412.1615467030921;
        Thu, 11 Mar 2021 04:50:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615467030; cv=none;
        d=google.com; s=arc-20160816;
        b=CGM/5n7a8/djWt4xqEkYYJYfzqJ6B0cLy7aAmziVrgwvXHl60elw6LDciOqU9nobbo
         Hpn3OOk6O//Foo7uP0MBMAYeL9GUPDd0T+64RCnXjjJ1IcT8RpxWh6gxGzExUjWkRjuQ
         5W68HUDi9RiM8dQ9zhcaQ0HlKf4Q1RdF/HoQMaIfgLvI3zXYYu/FczgMXbzXQziYKrDE
         L2WTl7CsbfcqS/2BKHAaBSQX+afK4JQjmZzUdBQX5MEzuWf3urnHD7D8LEw+lcUIBqem
         7nuT5KFOqS8Er2EVrgM6vBXH5ArCOX2/IsCIBj+BejJEwREcPUzk46kAaq8Mvo1QWwNz
         JKYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YQoMnM+JalduchtvnnRdDi537/sQjYe69dpZBUUIePI=;
        b=XQjzQVi5G1cZMW7AJqNk7Fw9QrcfA9IN4AoyLWjBkSqMhs3DM4Bkv7uTk1AjhZKRbp
         KmgrpvPPHa1n0VTPDXeuUHOrsxy/+z2IR3Er4X4eGuwuiAkpJB5GaURgp9lw/V+ty3rR
         zKTUiDdSrgtNOPdUCogd0WB9kb2LmQi5rWCoFa8cAzxrmtTnJ7xMB0woyEmO0mOF//MC
         cAtx1KWV3QqyvueVkEOv0AcReb1zH3zPh4dx2+/c7xGcTU+brK9lJA/l/v0mg5VfVNR9
         pnDSTmynRfLfiJUeSN5fbpyJnUSUuH/gjYpEWusFlc6PR/4hYUJPiVidEpFV1l0Ljs6A
         R4NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=oOGUaSre;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id p189si99033wmp.1.2021.03.11.04.50.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 04:50:30 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0e1f0084acfb80b2ea2480.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:1f00:84ac:fb80:b2ea:2480])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 570341EC04C0;
	Thu, 11 Mar 2021 13:50:30 +0100 (CET)
Date: Thu, 11 Mar 2021 13:50:26 +0100
From: Borislav Petkov <bp@alien8.de>
To: Juergen Gross <jgross@suse.com>
Cc: xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
	x86@kernel.org, virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>, Deep Shah <sdeep@vmware.com>,
	"VMware, Inc." <pv-drivers@vmware.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Andy Lutomirski <luto@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v6 00/12] x86: major paravirt cleanup
Message-ID: <20210311125026.GB5829@zn.tnic>
References: <20210309134813.23912-1-jgross@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210309134813.23912-1-jgross@suse.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=oOGUaSre;       spf=pass
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

On Tue, Mar 09, 2021 at 02:48:01PM +0100, Juergen Gross wrote:
> This is a major cleanup of the paravirt infrastructure aiming at
> eliminating all custom code patching via paravirt patching.
> 
> This is achieved by using ALTERNATIVE instead, leading to the ability
> to give objtool access to the patched in instructions.
> 
> In order to remove most of the 32-bit special handling from pvops the
> time related operations are switched to use static_call() instead.
> 
> At the end of this series all paravirt patching has to do is to
> replace indirect calls with direct ones. In a further step this could
> be switched to static_call(), too.
> 
> Changes in V6:
> - switched back to "not" bit in feature value for "not feature"
> - other minor comments addressed

Ok, looks real good, the simplification is amazing! :)

Can you please redo with the minor nits addressed ontop of the
tip:x86/alternatives branch:

https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/log/?h=x86/alternatives

and move the cleanups patches 13 and 14 to the beginning of the set?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311125026.GB5829%40zn.tnic.
