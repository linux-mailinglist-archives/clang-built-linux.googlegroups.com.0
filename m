Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBN46RX5QKGQEK2CWAKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 142BC26DAE2
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 13:57:44 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id i9sf844135ljc.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 04:57:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600343863; cv=pass;
        d=google.com; s=arc-20160816;
        b=0WpYou85Hl1gkwgSwOyiwNtRPvSwpO+KrytoVdfRUimDUJ3bbzoepHMW+0KsmyIhdG
         wDvrydI/dhhDe2IFB5KZCZcmrwlU4mKxEVz2q708bfJr+Grs1NFlPDYzzbpnYEvAiAet
         lD2MX0Eyfq3+OcqqqjCRajNd3U8qXMd1pYs/k0fPDbRvBcbDoFTBdvi90pG4FUouXDiG
         1S/aYDlWf7Gl88KNYc9Oy9RtcNkQZJT/I/L6tZ8ofDZzAq7DRQ+zKGEdkqhbb3t9DlSm
         NSJ2G+KZclaL+3eRfeK6ZKW5sXqmAVx1tlMPq15Iylh2lGfddJl0Vq2yFJzacmSQQggc
         8t6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z8DhdwMCJXSVBQsWdUD13WCJs+aTVdUyUqXcA2XF6WA=;
        b=PDtMUqfjPySWEI7QVTpSa1273wUWfOChxcDqvnrKkgCQepjVD/UMhR+hQFCP6E/fbM
         kLDk0RKyZ5wYgncASmOwoMhfV7ubFLpqi0Bivmwc6sj8kfeV5HpkpSdTgUzCwWlUSmXY
         R4TX5+3cHTKdY5MHolVd6Y+KKDzidVPXq17RUko5EMR4eKaEDrPzQxF2z6cXZrwJFykv
         e8DzWOcvBf/ZWSm+Ae0sMnRaWp5HAp1NI4doXGgRTgJ3vrDxQpHNFIcD7hSTEe9gFbfH
         F8CoW4rPUWHizI6A2PbAuDmwQHYOoT93HSRP85TXGV6wpj7QyCNvBTV355kd09Ihl3+a
         Ne8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=hAB04Gr0;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z8DhdwMCJXSVBQsWdUD13WCJs+aTVdUyUqXcA2XF6WA=;
        b=pA7Nuxg5DVfDJqE+q4wYCz5zZObhYWfZBtCIp7mHCKH2de084RU3o7BFu21jiZ6yKS
         zt+8ohoWoerElJZ9e86lW7Qg6iLvZYFv5f9eLybHVmDK5/RX9iIPR+m4IlQ8iinsms1u
         gD0ZoTWSrbQbwUihCKFbC/4vzbWAD2Dd/WE7xzh1qH77Nzg6hHF3o4N2YjzxFwlilB2w
         Jrzb9R9W7z7DwOgXcaD7YNjI/0BlVOWmBquQNPS95wlNt0KR5zKUhVJqEkmIm3blKcze
         DLBjCU58t/JhC5s838L0hnv7cx5AyCoOxNP//MGDnnVnXbynHYXHn4Iak1MYrLclY1Yu
         M36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z8DhdwMCJXSVBQsWdUD13WCJs+aTVdUyUqXcA2XF6WA=;
        b=LN912qndS6UHM0rvrrXGKQdCFOdTgsvraxuTkE9+Q1tOPoRWfPDY2uorb8zNcphgC/
         Pury93iosCWA+/nZOAbocBCD6DX6GRWBaRZouXyWKRzzKBudPZEyCOa/AXm/xB761OVc
         be86go/gPjslp9x0cFYUQQXPcw9pLsytwhUEeliKhGJPsp9lYaU5s72l9vX2W6Co1cLe
         pWd0mPRkY4iuOHqALXsX1Jwkfgkx2qOPNGaqw77Y1G4giCEiUqIaBfaa5K0/Ur2g9xyw
         ZZ6RUnE+9QIDeoYAnJS34f16I5mJZz++9YEd3oDTE8SlmEX4iNTFUlqaZLlQvqOtnoFQ
         3S7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aNFexYywpakZ3hWuW4HJlywsotA84lM3AI4HAKyRZtuVsEK+N
	2gjYpQwFd3GTjozogSRebXY=
X-Google-Smtp-Source: ABdhPJwjpV9Iijg2L4lL+WUrjCNxC/o3pKrEVNNu0r2Qr/pkVolUWRwOmtfKjQ4MD8jIGUSK+kWD5A==
X-Received: by 2002:a2e:898a:: with SMTP id c10mr9128294lji.4.1600343863634;
        Thu, 17 Sep 2020 04:57:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:93c7:: with SMTP id p7ls277675ljh.11.gmail; Thu, 17 Sep
 2020 04:57:42 -0700 (PDT)
X-Received: by 2002:a2e:958f:: with SMTP id w15mr10973085ljh.449.1600343862627;
        Thu, 17 Sep 2020 04:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600343862; cv=none;
        d=google.com; s=arc-20160816;
        b=jUw5h6U++J48LvoFYtB98Tr8IGH3DtdDOJ5IPDK4Ce8IobcHgJiWCWULbj61REp8Dr
         6wD6o18TXlsQVihG/AQNlGRcKxaD7UrRKhlceuPv/qFYHhvEOD0FBFrRKYlfufJLkITK
         6lhhII+edtZAmW0Cazub7/Pjm/rOsgHGjmUNkk7fFF+LMa+2Hdn/0XOhszuf5dCJsar9
         pm2otjSvAXnTuFUO/8tiFpanEy15VvtOa/jqFPY1dV1COVlx1TECrefEr/+Z2oixA46/
         NyQoMPLGMkWJmBYUV8phtdAKR0rvoIzJ1Vm0woki4OvAOfvvuIraWkHJlkGnweGJAuqS
         gLuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KnBEYj+XMQPVfN01d6ZhpPkXbMTyDk8FrXgj70Nq8ik=;
        b=pqk5y76BMXYyl23zVsPbZyBazuYQcugkSHQcOKPmx08HAqWbZKA+4v/b2K0MYBnNq9
         nva18X0DlV8TY8oUzjzHiKAZ25fHOb7VThY4o9A08DHsqy4+zZzSeIInSwbYWFIqt8kr
         RG1XT6nqx7WF/7ZhWCjCcYdLgv02IDaWzOww50m1FiL9Ffjy23Izf9qVpx1Pae+5dHPu
         kVswYuGRm9tUuJYfDcJi+Zx8TGMzdLkz60ctH2s4yhrxCeR1AMimN0RxtnnCr+dylF7M
         b6Rv3YwSbjtarzVi+GlPowMINM4ClWJCe8cQVCjLvV4rh3aaRvOraioCl7OJADi/dBeG
         tPoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=hAB04Gr0;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id v191si514541lfa.6.2020.09.17.04.57.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 04:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f1053009faf0a64ea33345c.dip0.t-ipconnect.de [IPv6:2003:ec:2f10:5300:9faf:a64:ea33:345c])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B14D71EC0409;
	Thu, 17 Sep 2020 13:57:41 +0200 (CEST)
Date: Thu, 17 Sep 2020 13:57:33 +0200
From: Borislav Petkov <bp@alien8.de>
To: David Laight <David.Laight@ACULAB.COM>
Cc: Andrew Cooper <andrew.cooper3@citrix.com>,
	Andy Lutomirski <luto@amacapital.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Greg Thelen <gthelen@google.com>,
	John Sperbeck <jsperbeck@google.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
Message-ID: <20200917115733.GH31960@zn.tnic>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic>
 <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
 <20200917060432.GA31960@zn.tnic>
 <ec617df229514fbaa9897683ac88dfda@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ec617df229514fbaa9897683ac88dfda@AcuMS.aculab.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=hAB04Gr0;       spf=pass
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

On Thu, Sep 17, 2020 at 10:05:37AM +0000, David Laight wrote:
> The 'red-zone' allows leaf function to use stack memory for locals
> that is below (ie the wrong side of) the stack pointer.

After looking at

"Figure 3.3: Stack Frame with Base Pointer"

in the x86-64 ABI doc, you're probably right:

0(%rbp)
-8(%rbp)
...
0(%rsp)
.. red zone
-128(%rsp)

i.e., rsp-relative addresses with negative offsets are in the red zone.
So it looks like the compiler actually knows very well what's going on
here and allocates room on the stack for that 0x8(%rsp) slot.

Good.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917115733.GH31960%40zn.tnic.
