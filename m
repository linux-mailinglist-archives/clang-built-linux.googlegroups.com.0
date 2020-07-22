Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB3EQ4L4AKGQEHABYN4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ECA229F5E
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 20:41:50 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id s1sf2284891pgq.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 11:41:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595443309; cv=pass;
        d=google.com; s=arc-20160816;
        b=BOtwvJWO85G6GKFWlmoLflVO4Rzk4qMyHQoSbwEtjifOgEbzPEw9fMTiuondNCSqy6
         Zx4HkEQrucyxMfAZJBwYDM74haWtr+g5AKEgdadP+JQXgocW2GfnrIcjkjD0LIJMlmGY
         C7+B4wEkJitoFdwzZSzm0rMETx1jtXPAU/tFv5FQ/wRsmNCLl0hCiaJadXGgb6BxGjxS
         QEeY6U23jpCiHoLPjNkLGqjGfhkQUxqw/krHy6hCYrXPv2zMoFGw49lM6sVQARnVMpJ6
         V8qj3rhnQ9461UVK5KnOGEnQNQ9t4KnBXRQrWtIq2259iFUKodOzaHRQ5eaj//QuIYyb
         f4fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hjI2i30gNpFeOp/cn0gsDNnlzs15N1nNnRoTlpD+Io0=;
        b=jIkQKdAW/qHn1GYc/i+0rS5P/7vrsxtatssEFm44rh93ZGmaZKmTFZ4+asOeNBMEeB
         JXcAPsZX9iFfAbiM6iBuB9gsdzqsZE3UQNvP4gYjeRwmiuXpaS9ALxTJvy9NXEEMRWFJ
         nguoNjNt6vBMuUt4cVxGUIyMwbfa9rvi2cRKBbVdoRGh5GbcT1pf59wr0J+gZCHNXV/f
         bTqLioIBPHV/fOantR08yWMPw0Lun0WLSBRw37bllc+5BviK7vsOEqR4CcY4l2siCG3V
         tbcsMeMcRoaW7c0f60+g3qj1/vQyHoo8JiyAVaYdejvOxpmQtANPtHSSqewAOqzXK7oM
         f/hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=f2QZ2qti;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hjI2i30gNpFeOp/cn0gsDNnlzs15N1nNnRoTlpD+Io0=;
        b=cguvI93Q5UmAYJc1Uu6HPN2BFkNWLznwKdS7D+ZozrIbsBL32uo2+QpfDKck5nCerU
         fvlLeageN0yyo1bZkrhK8rGEMRzTPnL+zZGnacUTSwiQoRh7EUIxm7EDeYTbev25jqOp
         VxCviGBL4T90v4khsN0In2peqwGVFANS6J+eB4JbOE8ceL60oOApWCp6KtzanIY9zNHQ
         E0GH6aAHM8A+aAPd5zh3yRH9kAFgybV08wBtKEKlBrBFszEOl/CyjvII9aUsHaNVzqDz
         aPwGp4r6sxXs+Q9oxv45fFRzFDA1ZMLKFRr3dRCI/kwIeuI8fgIQXF8SETwXkuKX69Ra
         1wkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hjI2i30gNpFeOp/cn0gsDNnlzs15N1nNnRoTlpD+Io0=;
        b=VAOoGblRzXMh8cfFyKyejG2OAMjYfdABZABJsJm6CegBugM2PRzJOYJ9MQVI86APuZ
         ZaF7xzahJwAXWp37k7lNcLLrBMYm2/pOZL0AWs5qcBcaror17hVgLF6fRN7KejdZXomK
         8oElUmco9ZEL8WI/+ZlsDJjvIgHsf0BmooKniulNPfRGsXbOAW4HBlSwSkhvOb/JhGsm
         jRz/bbS4vXA2Idc2CrxVdJZZhTx0E5gL4sgrVAoo93phO6EfPxYD5u/XjcRXt+YOP19G
         Lr4qV4yrrQbkAGQQ75T0nitpOysne/OSItfArC2k9yQynLPHIa7D7gh1S0wSBJtEKRmM
         PErQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304iI/mDPqGv1PWrF7Ljy+58depsvhWxn/On0VLBD59CRgcZs/T
	1KxCZ51vfTfQdcunaHQuvL8=
X-Google-Smtp-Source: ABdhPJw5NkwBMyHVKy2/OuasKJEpIKe8CeIdyc/bwJBfQ8DZqKkszib3r6e728mygyjewobxEHJMZA==
X-Received: by 2002:a63:4b1d:: with SMTP id y29mr1056686pga.264.1595443308897;
        Wed, 22 Jul 2020 11:41:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8c01:: with SMTP id m1ls1017975pfd.2.gmail; Wed, 22 Jul
 2020 11:41:48 -0700 (PDT)
X-Received: by 2002:a63:6c1:: with SMTP id 184mr1069525pgg.262.1595443308366;
        Wed, 22 Jul 2020 11:41:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595443308; cv=none;
        d=google.com; s=arc-20160816;
        b=z1JVK6SKy9A4n/74nZDYpCEMwb4l+FkcbNDeVF2tTWugCqkupOKpB1pRokFbfLbDQD
         JvQzJip6MQ1eLxAmXGVbd8DptaCUTuqGV1sGybC0BAWq5OULyz63TLaftLxCw/QsnzQN
         PdDtIS9HzDkRKsN05pEtT3tD5SauS7K9bn7SD0qssbJRe5BpnhgwBqWWPYithg9ZQNbp
         ns8T+igwbyhENZ/MYjFY8/4ZNsdOqIoMyPIJl4FN22YNCj2O2RywJf/fXyro0aOFhOhz
         iiXHG461JSlw/aC8qzotig+ZZ1nhKpIYXF05pj36vKKlE/ZaiZF64XOStFH+O4Pas24n
         JPSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DqMZf+NKxev5DHoTyVPRSIfA19GkA4kV6jf4PNYb+Nw=;
        b=sTBpvWlNZy3dM8SX8ILACO6iVMPZFT/IEJpV/bpY1jUJUrGFhCfs+18/sqgKPfkYnm
         PFKPmfporA38nVvUp8LlhRpO3ok+H5zP+yDni42wZ7/317tEI8UhzF2cbNIPOgAJ64AU
         MEKhXAdk9MTSG57GFDhApGaIiNYrf8QEGhxJ7ppurLpExddGhxT7P30xgQuz2SFMeqxI
         /sqwqiRixfP/HxuJzcWEw7e80nyN/ujAtYcAKCVjiTvVJzTxir0zuw1fKUmnA5/06gz2
         TeJ4Y+XVVYLq0EhlwVaxmfUecHNUe4txDtFZuty8tO3Ix/hQc/vhQFw0Dr/Op1eYXXeQ
         iBlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=f2QZ2qti;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id mz9si37733pjb.3.2020.07.22.11.41.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 11:41:48 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jyJgU-0002Lw-27; Wed, 22 Jul 2020 18:41:42 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id AD0533006D0;
	Wed, 22 Jul 2020 20:41:37 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 96CE828B5B17B; Wed, 22 Jul 2020 20:41:37 +0200 (CEST)
Date: Wed, 22 Jul 2020 20:41:37 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	mhelsley@vmware.com
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200722184137.GP10769@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
 <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com>
 <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com>
 <20200626112931.GF4817@hirez.programming.kicks-ass.net>
 <20200722135542.41127cc4@oasis.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200722135542.41127cc4@oasis.local.home>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=f2QZ2qti;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jul 22, 2020 at 01:55:42PM -0400, Steven Rostedt wrote:

> > Ha! it is trying to convert the "CALL __fentry__" into a NOP and not
> > finding the CALL -- because objtool already made it a NOP...
> > 
> > Weird, I thought recordmcount would also write NOPs, it certainly has
> > code for that. I suppose we can use CC_USING_NOP_MCOUNT to avoid those,
> > but I'd rather Steve explain this before I wreck things further.
> 
> The reason for not having recordmcount insert all the nops, is because
> x86 has more than one optimal nop which is determined by the machine it
> runs on, and not at compile time. So we figured just updated it then.
> 
> We can change it to be a nop on boot, and just modify it if it's not
> the optimal nop already. 

Right, I throught that's what we'd be doing already, anyway:

> That said, Andi Kleen added an option to gcc called -mnop-mcount which
> will have gcc do both create the mcount section and convert the calls
> into nops. When doing so, it defines CC_USING_NOP_MCOUNT which will
> tell ftrace to expect the calls to already be converted.

That seems like the much easier solution, then we can forget about
recordmcount / objtool entirely for this.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722184137.GP10769%40hirez.programming.kicks-ass.net.
