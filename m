Return-Path: <clang-built-linux+bncBD4LX4523YGBBZEGSL2QKGQEQZ555AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D141B888B
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 20:37:26 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id t24sf7146816otl.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 11:37:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587839845; cv=pass;
        d=google.com; s=arc-20160816;
        b=Efw2esInN49bFXl0GgRcUOjjlEeUHtKNG4kgjBI60TSwsbQOdUfVX3tzan61nstFK/
         Ktqls/gkVtqg8IMmg51Gq9//WgUV4tWP/USDwUfgI9p7OvRnctLU/jUB4XpjtlJZWPg8
         LwGWw/RkSRgG7fqrkC25gEG4jzrJPKIDXrSlMZLRDvOVjbsmDkihuPkVs3YMlVeH+mG6
         Kxw4/CoPzeIyoX0GKgrZzvCEz8H2T0EuDPZ9+OMJQ/Y/9agJzocgxVNKCsY9G4kgcrpi
         QuTEhbIS0xLzerK1fGX4FkoAC4RTlwYnzpguTYj3sRHXpqf9dH1cDcKS6k1BPNuoA5RN
         J79g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gxG4TT/dZlHs4LRfEa5KbsheC3uh/mqxgp0+8QZSD7Q=;
        b=qSesvH/P3rQep4N7qGfViYSwRDQ7rbuqznkLnPNcANtYvydxNLFMW31iQ4UJ6QL5U9
         fOZ86r+1QWPHgPIs30ldi/Yvbt9zw5GHDqni0/Fy+y3CtfI2vDaIoKcDSGE6wqgz3G4R
         uyH7JKAmaB/ppTZEIC+xCcPi691vEBhCUp9mx2KQePLcacWwV+UNabTYBm4JtfEVxKD2
         g2e2D5uC34LVSpdgRRIgvr8/ffCTxeke5kWVXHY2A29mjyV4Y2DP9nQRVauqDQxvBul4
         B8uZijzWIRyvWZwyM5thDBqXCAINDkgkmoo9cC8q+ljgif3vWy8UwLP5QCIqZ1/xgHge
         QUZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gxG4TT/dZlHs4LRfEa5KbsheC3uh/mqxgp0+8QZSD7Q=;
        b=olGcNgW1JfNSSniOLq5Bd6aSXV2FFc62J1lbYBaO4of/KfaLEjm7QgSmNtBniVTdcD
         g4kSA68Ge7QC21Uog9K7m5WpO/ZSSYS8XXEO1v0mn3eEUHnl55rzZekchEfjS42VDMdD
         TAjJYnaERRgXasY1zO4jooyqLCSxi+985ARsFUHJVOHlthz3CdRCUO7Bs7SVGln6Kq5Z
         QweJYfdgR86vQdNFBL4NM46gq2fwXgg9QNG5MA4BxNBTfVTRt1dZT9uqyWKXEAVctyhR
         NP/4Ibv7CDr++TQXpfv4NAcrC7abpHlimCVvRXDt4tL/4OD5aZfKqRjD+IcZjI1s7lGP
         p2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gxG4TT/dZlHs4LRfEa5KbsheC3uh/mqxgp0+8QZSD7Q=;
        b=CUqebheBUGYxcMig7qMrh0ZnZTpRfAP6VbRITepdXzbnW3vhneQchM+r3P6dM/hQyf
         mo4q4tfEXC3QHfnevg322hTLEt9x6MVxNwN7O++WbLQkC8dMC2cg7MFXb4ynIcxPY+/M
         XJ7CKjZ55D+7xVA2ekhTFBWkxahiQq6V/mi1mZ7UDhg5dkGCxooaoZftVNcqWuJi7nNN
         XQq1AHtgawLo8IHAIeYX3vP2WZUeZDcm0c/r9qtQnz7pC1S9ETtBE/K9cxm3CqQOytvl
         2fNBQt7B8FRMxTGv6c4CoLPbbs9cx+TNZRoPLI1lpovOoEtF4QEf/W+SAJ7PUhoPPEzN
         6log==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub0+V1Pdts9cUxZsNs4nJbOj/2QSLzMl8Jhnfix9lWckQa3NiYc
	QwQ8ddFsWN0KV5Cc3DFq3pA=
X-Google-Smtp-Source: APiQypJPvmxeAtvlQUDoSMquEjPxd7Rhr3impDCIJ7xlEl8kRNbRaNaTlTxA4g8YxPqHjDvWQYyEow==
X-Received: by 2002:aca:518c:: with SMTP id f134mr4029833oib.33.1587839844912;
        Sat, 25 Apr 2020 11:37:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:30bc:: with SMTP id g28ls3366265ots.4.gmail; Sat,
 25 Apr 2020 11:37:24 -0700 (PDT)
X-Received: by 2002:a05:6830:2317:: with SMTP id u23mr13309650ote.203.1587839844423;
        Sat, 25 Apr 2020 11:37:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587839844; cv=none;
        d=google.com; s=arc-20160816;
        b=zOzJF0sdFP+izM+lpKFawzQc7dRzcPA7xOcFAOPtceCyTuzjKxwlf41UA0ms8NM7JV
         1ERqF2vWUiLUWxKLm+kjqeIQWfCC7jMimze+FlFPgwuvy6xC9kFIIMal9S1U9BG6V9db
         8iTzozJsu69levc8O5zIBkBomZnFy3PeafRyTKe5d7If80pZ38UMGD0+QGU2GRchwI7T
         awPqOf/Wxy/oCwzMe3PpAj+lQYKrM4D4cn0O1DFeL+OR/q1EfhV/cP6IrvRaOE5ULS9V
         eXjDClKU1yB0tMKWXn31iiLcT/zXU9vsZYCicm3xDHfCnQnN2WtHQzBuBqZMBybAj5w+
         C6eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=yxGVLDW0tf0uJCMgP17lBICnNwEdqwwa8HFau+YtLGw=;
        b=HedVoLz2kY48jUSBOwu4q502LH310LXTPsgp+fs+1E+ugvKIiICayuyZntD7PO3fok
         JtVvLJHA42TF6X/O+m4yUW0l2qQ/t7BbwvEbJEddHKfqgOby9gcCXj0SIYUHuZHa8fp9
         dAxTRufGJYygoGraVnHVgR/38r/zK3EM3AvsX1duQ5ukn2p+tNw09YHcX/Xz/tdvbc0m
         XseimOK1SC5RGvfPe6AVF15e4VLUymKNMQ4FWZ2SbAQm/iifR8DwbukraVblz7pH9Zg1
         JdKR/C+DYvcZWYvXJ5bqHIMF8tmlMcHAzbh02eCyvUlYm8aVoflZfbw7s2QGHy2EpWlF
         OMcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id v1si817833oia.0.2020.04.25.11.37.23
        for <clang-built-linux@googlegroups.com>;
        Sat, 25 Apr 2020 11:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 03PIb3e7031547;
	Sat, 25 Apr 2020 13:37:03 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 03PIb15d031546;
	Sat, 25 Apr 2020 13:37:01 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 25 Apr 2020 13:37:01 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>,
        jgross@suse.com, x86@kernel.org, Kees Cook <keescook@chromium.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        Michael Matz <matz@suse.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Sergei Trofimovich <slyfox@gentoo.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ingo Molnar <mingo@redhat.com>, Paul Mackerras <paulus@samba.org>,
        Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
        =?iso-8859-1?Q?Fr=E9d=E9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
        boris.ostrovsky@oracle.com
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425183701.GE17645@gate.crashing.org>
References: <20200422192113.GG26846@zn.tnic> <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com> <20200422212605.GI26846@zn.tnic> <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com> <20200423125300.GC26021@zn.tnic> <20200423161126.GD26021@zn.tnic> <20200425014657.GA2191784@rani.riverdale.lan> <20200425085759.GA24294@zn.tnic> <20200425150440.GA470719@rani.riverdale.lan> <20200425173140.GB24294@zn.tnic>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425173140.GB24294@zn.tnic>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sat, Apr 25, 2020 at 07:31:40PM +0200, Borislav Petkov wrote:
> > There's also the one in init/main.c which is used by multiple
> > architectures. On x86 at least, the call to arch_call_rest_init at the
> > end of start_kernel does not get tail-call optimized by gcc-10, but I
> > don't see anything that actually prevents that from happening. We should
> > add the asm("") there as well I think, unless the compiler guys see
> > something about this function that will always prevent the optimization?
> 
> Hmm, that's what I was afraid of - having to sprinkle this around. Yah, let's
> wait for compiler guys to have a look here and then maybe I'll convert that
> thing to a macro called
> 
> 	compiler_prevent_tail_call_opt()
> 
> or so, so that it can be sprinkled around. ;-\

That is a lot more typing then
	asm("");
but more seriously, you probably should explain why you do not want a
tail call *anyway*, and in such a comment you can say that is what the
asm is for.

I don't see anything that prevents the tailcall in current code either,
fwiw.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425183701.GE17645%40gate.crashing.org.
