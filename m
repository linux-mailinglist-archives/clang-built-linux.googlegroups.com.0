Return-Path: <clang-built-linux+bncBCIO53XE7YHBBZVUYXZAKGQE4Z4KBIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAC6169068
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 17:44:24 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id c1sf3498992qvw.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 08:44:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582389863; cv=pass;
        d=google.com; s=arc-20160816;
        b=oi6frHdvbbV+r7rAUCqIv2nkDA/agJ4mYSmAHZ2fWnOJ3A/ItVKswzdx4a040S2J/0
         BFr0nV3Zy4DQnCX86wyDizI0iWB1iO2c5od4Myn51FEsgS1Uza2ek75kjnFziTvIc6+5
         /4mGm1R7oiyjh6x2CeOjWpyByZABedjy0X2FW02L8Pi6et2D+1+mQs3nW8KRra0roLAq
         YVUyTuMpZ51pjWAgi1ifIMxcaTzepYZbn6x5bDMio9GSzT4g1UfID+iCH7IUWZNziTRv
         Zp96sxFb3SFdAwR+bvaNhIkSaeu2iB2TAYJy37xxHzLwsYRdviqdWFFthVQDLaWgoqGP
         9OEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=xCmcWYH+tYAIzcr76GEzL9Y90UGdX4mVZWs2547ntkk=;
        b=XrB6NWJgD2O2rDtkkxLOQDEqzM9dZojR8ZYQz8iQkq1qB6tcQgknYPS/e93Dl7HwgQ
         Aio8Jwbh+cWBpXSzUwlSIi1MRxClg2a4feEumOMJNrQZknZPTnOQ5nZ1u1Bjt8c/Fjw7
         JXZIGw9tJuxAkV3iIjpYTRtBnsn5bXwHVLF6R8MzlncKHtSBwPKmzstAzZi3s16gZZ2t
         UvSQ4p/fyiMOpuQUuCtR6P/wz99/SxlxuYwkNitVDV5AoceKqs4WMjxYfc8wU9S7/u/p
         wRF7O7wzin0yPwiF3zE0lb4+wVlT5ETJC0GkwHFVLsbgHscRGRcQ/VB8pxa+hzLDE/dD
         0u1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bviH1RPW;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xCmcWYH+tYAIzcr76GEzL9Y90UGdX4mVZWs2547ntkk=;
        b=XqObcHNADSePBrF0WJsRMRI6Gua0hBDwt7u2E+cRAdes3kJ7AIulDDfGU5Ty/WwDdK
         P86D0BZHh1ZqfgEQ9qLEz3nfxNBqM2M9ExgwZotE7yarwpPTT6lrfdNqORgsrOZhLH4P
         1fx8DfZ9+CRWCscOTcPJ85/icLisYLCxBYzUzGHz4LyQufcpyi4albti/lIGBWQF+jq7
         9bRUoIFqwya4pz6MxjLA7HAYaNnl18gbBihqwYwKqfSVrSVkSJH7mjurqZ7uSUnVjhzd
         X8tTj3IQUQZUl6jPl3/wIRR3VoJvWIJ/9IHKMJNyw/YF4OP+xzPiqUO1/VaIAFvXA80+
         BKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xCmcWYH+tYAIzcr76GEzL9Y90UGdX4mVZWs2547ntkk=;
        b=GCAi/2aIV/PQ/f5Im7KpPNJNY/ITts3M4YqHWQLxxcJjn6/yBjkR3FbvYha3zTUfeg
         U4beUGwGfPlBpwLzayN6zDB32pOSdXzSVD/bRsLEjWXowWHKPEvL0w04ZrZgBIL55gaO
         oa9wt+WEvlyyjWGJNIXpQxSJPeOAgzOuZ9NXPWm4bbfz33WwRAoJX3FqupxAVXFiV+iD
         +2zEtCX+sl4zsC1BXFHlsL936lcxclW6Sjrsfy6tl2QKDnnluuUZl9wHSA6Zvj13IZXJ
         XATr8J1ipEHtXQdytoqVhgvMROhP/nVpBQ5GWse7BPsFnmz7Fazv6YROf25qLrgb3kXF
         NUNA==
X-Gm-Message-State: APjAAAW2OLm/2/T11r4tw00pe9PLo3pN6MuDYzcO1ul1OC+160/MrQ88
	PYF/4p6BaxKhq0Ohqudyzl0=
X-Google-Smtp-Source: APXvYqxwxmHptKaHzTGd9xHjGz3t0lKrKhgo5CyEYc1nU1hcRfIdzzOayJcS5rJSA6+w2xtz6pNFjA==
X-Received: by 2002:ac8:592:: with SMTP id a18mr38552554qth.107.1582389863031;
        Sat, 22 Feb 2020 08:44:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4682:: with SMTP id g2ls2100218qto.6.gmail; Sat, 22 Feb
 2020 08:44:22 -0800 (PST)
X-Received: by 2002:ac8:33f4:: with SMTP id d49mr38402325qtb.145.1582389862630;
        Sat, 22 Feb 2020 08:44:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582389862; cv=none;
        d=google.com; s=arc-20160816;
        b=sYvg9cxG0sj0p84UI5fE9tRODrbGtkuFxu6/hyVoJdUSN69x/0B2P2LcysVKCczW4Y
         zl6beY986S0Q5m65zV7jXwYD64dOTiHfTs0Uw48E7C1uuquWvZUvtYfR/34GwrJCQ1kr
         NTDRkcmeU5km5VbqOu2F0qL6WkVWMZy1fGUHtdKcFDLsQPDS748boFK+3JeId3zh0HI/
         WSXlSnOJncOENySspLBPA4Snz0J+l9Lg/1jVbM+FVj20ZSmKOaXRRJmhYjCQsSH2jAGz
         9OuPbPC7r0N/uzllVAktfqUbKmoWdoCjlmE5Gzzt8lKDtKL07co+FNHg5PZIQzy0KszS
         H42g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=davRPrnHp93f1Lv0/YKPaOSAs3H7scM60qBahhAvztc=;
        b=alvjRLyLEJA022/p4BafQyRh1WbldPoKRrchBlX4vdFsBnpviM9lWfEtjG89ixa8jc
         vy6kX1NL0vWQc5KLWYfdoi9vxpnrpdLzjwJBJrc3otWB1+2losVXjCYc+C2vvxz7yWV/
         oVvQGMMe8sokeMMF0N7TL19R9qoZCiMc6Bd1q2LjxceIusg3m2js73p96ahF4e9ZKBYo
         z0ZYao2djuupWHPLEdLRq9F5gItjY13gHP8DpuKuSdb/C2ioffAmAL95gLgba2t+ZsAk
         V2TwyXtnvflCHHH2rKie0SHDYs5beXx9CcmrM/K+L8M33vGvtpR+desrZgOJMc36nnux
         k85Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bviH1RPW;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id o21si409805qtb.3.2020.02.22.08.44.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 08:44:22 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id j23so3619115qtr.11
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 08:44:22 -0800 (PST)
X-Received: by 2002:ac8:6b4f:: with SMTP id x15mr37560537qts.152.1582389862273;
        Sat, 22 Feb 2020 08:44:22 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id x41sm3345118qtj.52.2020.02.22.08.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 08:44:21 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Feb 2020 11:44:20 -0500
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Fangrui Song <maskray@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222164419.GB3326744@rani.riverdale.lan>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074242.GA17358@ubuntu-m2-xlarge-x86>
 <20200222153747.GA3234293@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222153747.GA3234293@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bviH1RPW;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
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

On Sat, Feb 22, 2020 at 10:37:47AM -0500, Arvind Sankar wrote:
> On Sat, Feb 22, 2020 at 12:42:42AM -0700, Nathan Chancellor wrote:
> > 
> > Thanks for the clarity. With your suggestion (diff below), I see the
> > following error:
> > 
> > arch/x86/boot/compressed/vmlinux: no symbols
> > ld.lld: error: undefined symbol: ZO_input_data
> > >>> referenced by arch/x86/boot/header.o:(.header+0x59)
> > 
> > ld.lld: error: undefined symbol: ZO_z_input_len
> > >>> referenced by arch/x86/boot/header.o:(.header+0x5D)
> > make[3]: *** [../arch/x86/boot/Makefile:108: arch/x86/boot/setup.elf]
> > 
> > It seems like the section still isn't being added?
> > 
> > Cheers,
> > Nathan
> 
> It seems like lld also doesn't treat .symtab as special and is
> discarding it, but that one is actually essential to be able to build
> the bzImage.
> 
> The sections that GNU ld ends up discarding via that *(*) directive are
> .dynsym, .dynstr, .gnu.hash, .eh_frame, .rela.dyn, .comment and
> .dynamic.
> 
> Out of these, only .eh_frame has any significant size, and that's what
> we discard in the other linker scripts (in kernel/vmlinux.lds.S and
> boot/setup.ld).
> 
> It looks like it would be safest to just do
> 	/DISCARD/ : {
> 		*(.eh_frame)
> 	}
> instead. If you can double-check that that works with lld, I can send
> out a new version.
> 
> Thanks and sorry for the breakage.

Tested with lld and it seems fine with that change.

Boris, should I send the fix as a diff to the current patch in tip, or
as a fresh one that can replace it?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222164419.GB3326744%40rani.riverdale.lan.
