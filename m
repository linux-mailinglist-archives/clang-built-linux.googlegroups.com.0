Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBYFAYPZAKGQE3RBXE6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CE4168D00
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 07:55:29 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id b19sf1158105lfb.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 22:55:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582354528; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZSeT9yeevOk9bn0vwx2pXEr7J8GcH3j10gFi+h0x0OzMFpu/OCqp1dZvGN7uP/fLsw
         uX0WiNIVfpqK1phrJWvRL8BLO+32rgFyaevdlwMShnqr9V6F0lUCsC5kly2vW0qx1N8Z
         Nic/40UtUwBZ89ZFQL7qPL7OldATnc8ijlzr5ydXU2HeIBe9aCqukiDkiP8+4kPP/9g3
         oDwHxfJrMzXeswGre+VSf1VF9C653ngtG7imMrt0M03Y/EIB1Mr/SXVN+L/op8are5Hw
         uApbwlfTYbfebjizXq6uyDTniGd+7oPhWBsPFWq0tB67oj/HcYMtOYCCHidUkuD5MDj4
         +bzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=D6xh3BvKur57qNK47eDV8Gj+CNe/PpelU/R59IIPHqU=;
        b=G94a18j8SeY4Ma5rguLiQH1wFz2ZqZavt0Nde7kLKH3g40u9jJpv+tm7tt+1MtphU0
         0o5E92iW4z5IOu8Qao7InWAj7gyZHIrfX0vugWf57ibyOCMhuZkCIL7GfgQs/nM2tCFK
         HODWOoKO0seTaWIrrm6pjH1tI6AvQvZf4zmZYOyjQwNL5J0VS8sNi6F2F75UDqgtwUJx
         9JhFDZfZZI83l8CuYz7kkno6k1CRJ/QmlAVs81W07cklkmfjyZiN8LUcTSPOOliktKDK
         3+MYkihi9oUWy6/i27EjlKkTIxS29ecpxNnp3uQyhNs6EASwx1GhKifG9DCqRk5kj691
         Rczg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Jsob8vt+;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D6xh3BvKur57qNK47eDV8Gj+CNe/PpelU/R59IIPHqU=;
        b=sVU1HoXb3gkurISLyhqnF/ppkE/FlHTyn/FPBym9ZbxxDyObE+4aHxDgvYrzSdO2mN
         53lQfL/QJTueyeitUwBNVvdIecmehbhp0vWM/C1HayYF+VOWFLHzqs1zqFQUPPpB83bW
         FxNR4j0HNsyZmf4Jo4YFFl7q1XibGAOvnpIynrnx3H34EXEGGj32xU5mLH1PjjeYqTvf
         6MjyWkDOS5R+IUxUfLT5yXaeEavy/JZIF1TXTjk816KZPpTFlfNvNAXyInHm/9lFMfPC
         0LSmjU+7oe+xkMtLPPsekcYKBV10KMp69HFovhU7HZgP6+k1rsgrlGnL84cYzNMyOpRA
         N4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D6xh3BvKur57qNK47eDV8Gj+CNe/PpelU/R59IIPHqU=;
        b=a3R4OrjqEfYnR2Uw3yHxWPrCYLupkj+sbQuDCEhzbLWNlkITU0cXu6kPybIH8/WW1l
         pEFk9e7lapHPo4GoQdXgSxS1YeKK3gACNG+92+OPF8XGTZdVyCBsezpCT+HN2IAT+uC3
         tt+iGM+Ga1ixCbVg/K9ngnskEOIvYx4Ldunz9r7PUC9soIK3LClydbJ9PK/EnRojnWzN
         qoend9D0v93QbK7+BWF4c3lCVdcs5B0cI1mF0Hiz4DhnOOagJMEbw610FBUQP+vk1qSI
         AKJMNMXdEfLi+ZTISA8rUSotQwG32CHbqRdDqPZd1invaS8QGS+dZUHAKOyLyCoBWbEy
         8LOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXv0dqugduhGlAC6sViPAMl+oPW+1Plj820JDozVzZAQZyBbwrt
	aPU2dvmALHdjvxLaGJSGoZo=
X-Google-Smtp-Source: APXvYqwFLzahRD+ozhPovTuvCjkt7uB7HuhF0tegnt7tqiJCS9IvpMyJFGAyLO+YvfCIvrArtfcjkA==
X-Received: by 2002:a2e:b536:: with SMTP id z22mr23611293ljm.259.1582354528496;
        Fri, 21 Feb 2020 22:55:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7309:: with SMTP id o9ls705987ljc.11.gmail; Fri, 21 Feb
 2020 22:55:28 -0800 (PST)
X-Received: by 2002:a05:651c:1045:: with SMTP id x5mr24753030ljm.266.1582354527943;
        Fri, 21 Feb 2020 22:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582354527; cv=none;
        d=google.com; s=arc-20160816;
        b=QLus97ZwYFo1ujJ3y4cLb/xhKBpHyLJpSDA1hOiNo4HQPxXbJGRLJgFFL8dP6WaX6/
         XffBNupn8Al3226X96oFslYtWtISuMVN+PnWMka+O2Hh0iyWOCE0kvyR/AdKZnKmU/nF
         w9+9q6B78QmBDR4UahSCZsnyjUy87vNMmTbkPxOCeoU0I7nHnPVF91+5T7+6WtGXYq4u
         7a50S0Ed8l0mHJeKEi4wb02Qs8x0dAYmEV5pWLJXhNkGuSg4LW8j1TCHydgNPRjahBRm
         +AQM3s5A+57g4HpjNf+A7AVg3udL55jQQSyWVe5qPR7LQpxEf1r9lVosy2j+TMgJPrKX
         jwLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6uugywjmabDqx6fKLmBOr1M10mUKtzr6ahR9wgIuTjE=;
        b=K21Jw5RdWdEImPjpMcSMFzl+tjr9+b6cIMnChZ7FvWroHd+xUoT1FIOSHR4JSSKKHv
         d54tJ51dB8re0JE/GxMIV/PjKIGwyPWo6QyAm9WNqj/FrdkoN20QmmE6jil+dpkR81t/
         5IBCtsxEKPox4nVz44FJ1i+DPHDkPdN5snHUULfmfCze8VQH2i7NL8xI9prye3W1WYEZ
         1Abjypx9GxI+jJo8V6PSOILHPUf1IxBQS/sHaaMWi8FfVkeXhXiGj2bKmJbXCEdm5Mst
         7KZUdmR5pwySMvEomcNdi8mCaOS0eTdQ31191BgwaZ7K6pYnEjlDFws3TCvkT5C2ykaS
         i5Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Jsob8vt+;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id b6si133836lfb.2.2020.02.21.22.55.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Feb 2020 22:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F1C5400284D3F3FD3B9EA68.dip0.t-ipconnect.de [IPv6:2003:ec:2f1c:5400:284d:3f3f:d3b9:ea68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B54651EC05FD;
	Sat, 22 Feb 2020 07:55:26 +0100 (CET)
Date: Sat, 22 Feb 2020 07:55:21 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222065521.GA11284@zn.tnic>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Jsob8vt+;       spf=pass
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

On Fri, Feb 21, 2020 at 10:08:45PM -0700, Nathan Chancellor wrote:
> On Thu, Jan 09, 2020 at 10:02:18AM -0500, Arvind Sankar wrote:
> > Discarding the sections that are unused in the compressed kernel saves
> > about 10 KiB on 32-bit and 6 KiB on 64-bit, mostly from .eh_frame.
> > 
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > ---
> >  arch/x86/boot/compressed/vmlinux.lds.S | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > index 508cfa6828c5..12a20603d92e 100644
> > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > @@ -73,4 +73,9 @@ SECTIONS
> >  #endif
> >  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
> >  	_end = .;
> > +
> > +	/* Discard all remaining sections */
> > +	/DISCARD/ : {
> > +		*(*)
> > +	}
> >  }
> > -- 
> > 2.24.1
> > 
> 
> This patch breaks linking with ld.lld:
> 
> $ make -j$(nproc) -s CC=clang LD=ld.lld O=out.x86_64 distclean defconfig bzImage
> ld.lld: error: discarding .shstrtab section is not allowed

Well, why is it not allowed? And why isn't the GNU linker complaining?

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222065521.GA11284%40zn.tnic.
