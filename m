Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBYFUZPXAKGQE5WOPOTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D48100ADB
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 18:52:32 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id n11sf3477113wrq.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 09:52:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574099552; cv=pass;
        d=google.com; s=arc-20160816;
        b=fBGHLwC60W43g0HhITlyyLUa8ycjXVwskP3w/yJHXL3mkcrChSR1QINNNapy3c+oq2
         IDAgpkgjWKN/izI3uxYRRi1qaClx75FiPI63O8WzXA3H3E4tEiD7i9J5RsenhIrpIkLh
         MD+83PTiDzPj3+VTtu71hC3dX+3TdWwcyHnrG3NFTsZEUK0vsZGYiP7h50BRnt8GQLZQ
         5S3St7szAcEAIRVE+y1PZVv0a6nyAaPi5cWWEuHbBSTL5MInMwdXUQ7w3RQvcPwbs2m2
         EN1DRGi5HoOulzGFWL3ZIOUt2cn4JTiIYgdLpHE24/E41dpRHDQdG8TZ3LfczqjHOA4S
         WWAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=P6wzZRr9XkERaVp9SfVtHbR9nH2zM3u6cpfBMY7RIGY=;
        b=KdzeA5yEahC0B0Mx2hhUizpQHgcM2ltRvJAhyUAF9xmrDv+x+KYcBlC13JXnWkzMgc
         vxi5XiGfE7YlwroM9utNe/+yXdkUElz3lkrTuHeOArDu7la2kZkouRR81g0BlEyjK83n
         ll6tXQcYnBoLba008fDahuiZ6khxSyP8oQLzggh9lHBaMmzjMis186r2MlVvihFElTHk
         hvGYtUvJHQagWMvbO50nVUOWV9KOjpDEAwZ4Z0xXCUPYy/TFrBCb6/oveG0PFLpb6HVa
         1WcHL65sQKzj80vB5I88crAvzzV8DUkHJKiNTQ2Bc5QxWw9Fe8aziD0tNdMnsjevscnA
         wlTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=bz6rJuqn;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P6wzZRr9XkERaVp9SfVtHbR9nH2zM3u6cpfBMY7RIGY=;
        b=Cd9Gpp0KNC7aDeKgcb/RQOvs2Kuf2C6SQ/O6h+dQMqjgotjgvE7toQIgnxaKuXohnI
         jROqVAWvgtT2EI6sRt3C8Tv0QvDkBXlQ0/54lM6tU1YgBm5Pkdlm01Y71MPMdK6Kc4/0
         X8P2+T+3FUmZ7nXrYvgTSsE49Yg48fJUh6+Tg+caDr43CvYKWxeuUNvyn9qc5sSQoXGi
         E52nB9N39HSj5IgaIo+Xu/piYDQbY9TFMZWzgFTebX29DshuiYVkL75UZ68FtB0CLOcA
         Ivx8gK06kZ9s4ayx/BqPqSA6+eQxuDO2ZnPTNs/Ls3uOjtV4zIKj6gJHJmtztYW7a6HV
         l82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P6wzZRr9XkERaVp9SfVtHbR9nH2zM3u6cpfBMY7RIGY=;
        b=U/xWL5T/U4mfbLfP216D0MyDiGWoZoNnp3QjFd2DZoWbucQONqat8L3kDP5KFmrC5D
         os7QN3ULI+mrceF3PkTWLBb4kzFaOmNfrJS7wnkOo3S5ahOnsbWZYrdUJzx2MvR6zDL6
         I54YpPkTBHLx3+L2l6s1NrF5xrMOj64uj+OARyhNZ2fcctHBOwlMxOsIPz4rvoLUK1xr
         z+9dCzexlqioEYRM7IPi8oc2soEyAlmgQ2mPrH3Tre293a4ajD+VLxYR8lrpDVL85YHC
         nIJBXf0C47yRUPwMlD9UbRw0nuR8XFQ31by9cLs+2sRGyWubOcLoLzqnWkLbyW1m8PeF
         MzVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWcs0JbmaW5iXKCSsvtgAHLKCLCPi2kmNRS7VXtQbl/bxwlshZv
	Ig7AlcNXSSJ7/G1JKdoPOmA=
X-Google-Smtp-Source: APXvYqwK7Lc/iRWqv6Q/xo5o/Yojc23zAWQ3U2nHzNCVhEL+0jVMM89NxN9CgZS80aSNtJwhlTrwgw==
X-Received: by 2002:a1c:2d49:: with SMTP id t70mr258674wmt.131.1574099552297;
        Mon, 18 Nov 2019 09:52:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ca52:: with SMTP id m18ls451469wml.4.gmail; Mon, 18 Nov
 2019 09:52:31 -0800 (PST)
X-Received: by 2002:a05:600c:254:: with SMTP id 20mr380835wmj.6.1574099551836;
        Mon, 18 Nov 2019 09:52:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574099551; cv=none;
        d=google.com; s=arc-20160816;
        b=UK76mQ6L6s+0spXTULwNrxiMogVXkIlruG2L7I/e2ftDItcFohXKFZ7XDaE1JXdlwa
         mF29WXR1/YhvDQ4RmiBnAPvGoU979SJ/4st25u7wOaYrZpK8xrfxxG+Cte9ur3UYSEzb
         BnDd1gHYdvWy2vrPM2T7gvu7csF0Bd7S1obOwKHZVbDZ/8Rfi4Bf0ZY6NiwoceRec6PM
         OffvusLrrRHnSYMagfzNua8eCkOIBAWOzY8uV3Mor6BMG8UIF2OZJAXqRxNaUpZPmO5D
         cOPYpTx9Nvg1O/X9wrfWOMHiwbywUaDgDXnmRaSaAgO+0Q2VERZccjbr+ohoz65LyR3T
         tfDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iPwPA4kAOvYxtc6qwVWrK8VMs7ifOI7h/WCSD5jVWg0=;
        b=nCoOgFA5dRaDRtl0FQ8GB6Q4hGbTodfQR6+KPGpNoNF1Wh2hJdwlTyExYHBDFycobK
         vdK5hAZ1TuhHAcplwVREk+oaqm6lW9jAw1izNPBwGI3Yk+End2EHaR4jW3TaBUt+wIUT
         I3VlC0How8QtxYGsQTHhmFDKg7oadcBl2Wc/9BjopQTf72kCUDSV2f52WjfAPc8Bny03
         YPbsyHfnHSthams3JaYpupJs+CwcJoIBv+CsmScv3yon/qjSZHqhIecjC6DeqamZgWkn
         0tjqZkAySUrgk8AHHA5gjiFQrDK+R2X02Fv6PE6X8HqLx285/sQMnqydIb17TpFxz72z
         sdrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=bz6rJuqn;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id h2si1013852wre.0.2019.11.18.09.52.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 09:52:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F27B500B4ECF45A19F4392B.dip0.t-ipconnect.de [IPv6:2003:ec:2f27:b500:b4ec:f45a:19f4:392b])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 3F2F71EC05DE;
	Mon, 18 Nov 2019 18:52:27 +0100 (CET)
Date: Mon, 18 Nov 2019 18:52:23 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ilie Halip <ilie.halip@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH V2] x86/boot: explicitly place .eh_frame after .rodata
Message-ID: <20191118175223.GM6363@zn.tnic>
References: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
 <20191106120629.28423-1-ilie.halip@gmail.com>
 <20191118143553.GD6363@zn.tnic>
 <CAKwvOdmWoHqrUyZ-_ino9z7KRzizpdoY2ZL5ngUzwGy55MuZ4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmWoHqrUyZ-_ino9z7KRzizpdoY2ZL5ngUzwGy55MuZ4g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=bz6rJuqn;       spf=pass
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

On Mon, Nov 18, 2019 at 09:46:23AM -0800, Nick Desaulniers wrote:
> Yep. Looks like:
> - arch/x86/kernel/vmlinux.lds.S
> - arch/x86/realmode/rm/realmode.lds.S
> 
> discard .eh_frame, while
> - arch/x86/entry/vdso/vdso-layout.lds.S
> - arch/x86/um/vdso/vdso-layout.lds.S
> 
> keep it.  I assume then that just vdso code that get linked into
> userspace needs to preserve this.

Yap, that's what I think too. Lemme add Andy to Cc.

> This suggestion would be a functional change, which is why we pursued
> the conservative change preserving it.

Sure but what would be the purpose of preserving the section, especially
in the early boot code? At least I don't see one. And kernel-proper
kills it...

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191118175223.GM6363%40zn.tnic.
