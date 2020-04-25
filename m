Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBBXISH2QKGQEGITNBPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F541B8822
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 19:31:51 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id y5sf2428304ljn.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 10:31:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587835910; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0k4267ZNoKuPjblYMQ6a5S4hdVpzeRf15nk4xcAjCujfpil+r4Yy6xf06LfZufnOZ
         8SaSv1qvatnnX7GzgNIBcsHc/3fSSKg/ETyIBOXBJreJuK9t2Y7KGraA69BMhSO+4n6o
         dnzud8k3aByEphIBIIJjn9TLS4I1xIFvAFw89mrUukgJLKR9+ziH0k5DAubW5JQHdzmR
         vjlKyXYl6HxfNbRTXgxHYLPQf/teHpTN43D2bW+7eynOsG6VsFSvMsK73HCaozpXF404
         pKHvZ22s3s8zSlPl2D2F7yfMoFkg7iAZHG68zQ4X4JtQ6vYQpGKWF9FpCsOzxk2tVPCa
         ZkKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XuXZKAgFCjwunkn5Rq9rwWn0jhbTXkA8DvqBx+Vngek=;
        b=OifOxPE6t17IF70vSctTRXtXl1u6oQspB4/ZLzy2shoEeoWpnzRuT3l6WIDBIg00ZV
         Iy86coYzSJ1JCg8fOob0HjztHxdYCzVqdf5QLYXEn9O1ESATBYkTKoAtnpKPHgm57N/z
         dbbG7tzj/ecn842FtibrEbmM96gFuxnhyu6gwsotm0LtgHaVEsjBdNcEq+SkaxxHNSPR
         HDiFF/jApStRXiz8MbhodsvnBqd99sttYYtlMa9qX6/g4b9r9a9VgzV+0JXuF9vbR3aW
         uZu7CdFGisWlDESyuSQ/0SUhQQ5itJngDNY3b3lgBn0dMeCqYyfm7s/PQBQzyqfV3Ekm
         YwJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=BTmQGxPN;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XuXZKAgFCjwunkn5Rq9rwWn0jhbTXkA8DvqBx+Vngek=;
        b=GCsBkldnvycoZVuzN0ME3OSLHDQOsYsii0iWfCzgvC8k2wA6Txris/uldmUIpPOrey
         RXuF+HjIs5pxxfTlBexCKs+nSHGKqsOX97mA4xZJRbQrRuUYIjUCGcwwqnywSEchjDBO
         19rSuwgaWUBKNDiHAFeE1OwvXrLVHhJVwZiIGGVoRZrfLzBQOqexxqGRcUI+lEL8j1eT
         zfl1dNdFKCAp5i/CwRYDEIfJUcAFLM2psPu3O6IxBPDu1Blyii4aBlHfasHra5rfLnNJ
         QtQ0FVR1wKqvOMbHMFGUA2N3AdCfB7Kno32SNx4eeLYToNkKDCNFKPNN569ohHTvM1fG
         b6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XuXZKAgFCjwunkn5Rq9rwWn0jhbTXkA8DvqBx+Vngek=;
        b=ppIt+G0bPQ8ryW45p7gmR6tTijekKswfEIWdZQc3s0SaEtu0c/XokJdEzU1jvFLqSr
         L4oeCFI7ZijF77RIf4eAmZduMmOS1ZLd9EkOeW6TgZTd+yBGB8Hr5AOhVXnPflcKziKH
         6eDWZM8GpFjYbthMzWA1MXJWBJAmLU8tW1JaQDMPN9CF2EQOUlpwZ/IdYCWfj/esQW28
         ECN6a33yGKM+y0TftWiUe0oA4MhNz7hF3Ueidv5dII2h3lnkhzBFiFVbu5lGMWhvMGoi
         5B7AUOy/GZPIxeTvac1UmIbF0dfe5DFKXEw1CzoGpHTCc33DAHBqNiu9O5gZWSLk3X2C
         xaXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYv9UFHE6KopXGE8LYMxrLfGMpfmbtzZQprHn00M6bo4InRqnoU
	xGS/FyE28Cpkcohcg/nox5A=
X-Google-Smtp-Source: APiQypL/JyuNeXYQudszU/ZdCzHZQWsn+zCxPlUXvAopzULquMrcMONh65Fg5GmiSIRY11cOcLMUsg==
X-Received: by 2002:a2e:b4a5:: with SMTP id q5mr9698518ljm.58.1587835910703;
        Sat, 25 Apr 2020 10:31:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5a0e:: with SMTP id q14ls3246433lfn.3.gmail; Sat, 25 Apr
 2020 10:31:50 -0700 (PDT)
X-Received: by 2002:ac2:41d9:: with SMTP id d25mr10167921lfi.204.1587835910124;
        Sat, 25 Apr 2020 10:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587835910; cv=none;
        d=google.com; s=arc-20160816;
        b=MFIxi+lHBwT/gzwWYc5KkOQjDEoDKeZnSP481CoAV7H2SuTojh7bUWL8QiBh52cmaJ
         KGUNSL4cPXjGyttnop/NXF75pD0dMe2jXyONTiVAyW5gXgGqatr6o4ept3kEMD2lWzaq
         uMXQ5W4AkTq01l5ALukJ0XfCLk/FMLnrD1X2j+oZvJR6RQQOPRiYoQIm2rMovAYrkFmB
         I53XQ59C57J/DF+tdXCNZHqPDzwYZDV32M1Nw4d6sFrC2Yz8dX5qmFoWfI+RQactiPKx
         vkbMsQErios4+N2FNeJO04ycF6a9iFPxv59zpv8XmECaYS7zazSYgH6IrOESmewBTlJ+
         0Fig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uFkXHVwwFH85jEcy4ns2EHqg9WJsW4QYuQw8r9bQI2U=;
        b=sIwjISCey/D576qeeROOZGwjLZH12yCUnq1pVJgq5/WhIULjKiBSLFtQSsAR3GTHmL
         lMOtt4dZ+1/1xc0Uqrtlngf5ZVfhvDusVEdIsILppt0/MPo9ya3EPMFlgYgUvLs80ZNg
         2b/iEx1TSXXqwZ+Xh1adxb8UkZbU9lrfVmtZ/t3h8H0bVlCkr6hx/Yw1oHNnwmhYF/ZA
         3TxH4e9JJF/do5EUiNpWxdz3mZNUuEPPR900ygD1TDy2htMGrNSvwRV7/yjEVLDy8WkE
         Lx0xJnk73aVZr4FV2+BdVfg9fL4kmEsf32fgJl/uz5Trpnxj77kdTJq7r40lghHN3Ht6
         UfRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=BTmQGxPN;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id f17si593294lfp.0.2020.04.25.10.31.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Apr 2020 10:31:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F2A1100992835E22F06EF88.dip0.t-ipconnect.de [IPv6:2003:ec:2f2a:1100:9928:35e2:2f06:ef88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E661D1EC0CD6;
	Sat, 25 Apr 2020 19:31:48 +0200 (CEST)
Date: Sat, 25 Apr 2020 19:31:40 +0200
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	=?utf-8?Q?Fr=C3=A9d=C3=A9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
	boris.ostrovsky@oracle.com, jgross@suse.com,
	linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425173140.GB24294@zn.tnic>
References: <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic>
 <20200425150440.GA470719@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425150440.GA470719@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=BTmQGxPN;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Sat, Apr 25, 2020 at 11:04:40AM -0400, Arvind Sankar wrote:
> I'd put the clause about stack protector being disabled and the
> tail-call one together, to make clear that you still need the never
> return and always inline bits.

Done.

> Also, this function is implemented by multiple arch's and they all
> have similar comments -- might be better to consolidate the comment in
> the generic (dummy) one in include/linux/stackprotector.h laying out
> the restrictions that arch implementations should follow?

I'm not sure gcc-10 does the same thing on other arches - I'd let gcc
guys chime in here and other arch maintainers to decide what to do.

> There's also the one in init/main.c which is used by multiple
> architectures. On x86 at least, the call to arch_call_rest_init at the
> end of start_kernel does not get tail-call optimized by gcc-10, but I
> don't see anything that actually prevents that from happening. We should
> add the asm("") there as well I think, unless the compiler guys see
> something about this function that will always prevent the optimization?

Hmm, that's what I was afraid of - having to sprinkle this around. Yah, let's
wait for compiler guys to have a look here and then maybe I'll convert that
thing to a macro called

	compiler_prevent_tail_call_opt()

or so, so that it can be sprinkled around. ;-\

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425173140.GB24294%40zn.tnic.
