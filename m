Return-Path: <clang-built-linux+bncBCXKBPVPXAFRB7MHYT2AKGQE4XH5GFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f56.google.com (mail-wr1-f56.google.com [209.85.221.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB4C1A4CAA
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 01:40:46 +0200 (CEST)
Received: by mail-wr1-f56.google.com with SMTP id d17sf1319077wrr.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 16:40:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586562045; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ia7PCPUPEI224dvN2AyhE6bMUmPZ93YOZBQTBhDs5PKhgIgqaau1nrUXECtlhpCDcA
         pWrvsf3cUcy3okFSsyciAzNhRoaWy0arWndJTWRSinsYf8Hh8hISD5aOccjoW4/fCi5C
         MlnGPAzrzHUhy/OK4DJKE1O8TgC9+e1uyz/CxOHfOPNyMbJDXSI75Mxrbp6XKFrw0pzA
         G2w1pDsgSce7YGEE/CVVfsdfCAxRbKh8m4iXeL4NKdkLA99frYqo1ruMBMp0mnEDthOB
         hrkC4alGSIRwf3PyTlYU9wj0SyYqO9tl9PkxYWdvCIRAUsqWPnFPXfYqgI4lB+uapDuz
         2SYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=ygU4yP2al+9PFxZgzJrnXOvw8ZoPdgRCmQhayrSh6xw=;
        b=JKC96TdMDBhbIrQI9zKsZ8An4uwmPHNcSsTcNI3GcXaWArVYXH6SqLLJ1c09tlfygv
         8EaGtMeWVpND48aOJUEVUXqIeEsNzFO/Sx/NdA9ZDSkU6Vm7uCq3yQjsLz887KT3NNtp
         /oWBO8Rg07egEOgQEceaIR1nbURz5u77ix9vjwzt+ePOL07FbY7A/k6PRuyMtQIspK6a
         nQjA3xSLqi8zkMY9p/zPIE8QxpRfLXl2Xyrb2R1SfZ2YC0EFE6Cxj++oC4gpaDSOKuFO
         BZU8zUleP8LGmlkhGsMaPZ77v2W0yrxg5dVPhmdLD/HYCOz8M6W0jVd548uCFBnGGv+b
         o1CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygU4yP2al+9PFxZgzJrnXOvw8ZoPdgRCmQhayrSh6xw=;
        b=a4G7YcAmPv9xkx+5uhHhTd8EocF6jkvassW9fDAs181i4VuDO8k4mWckWO61Zxbg/6
         88HQYZ3S2xpSQYgd7ZvMt0Aciq6sKVfCu1ix7puIFqqX1MmIvqIH/3w/hFtOh3iJUJDC
         Ob2IOlBF7QnkW5KeO4Mb9TL8LMSJLbrzQeQI76OcRnQTvgqiykX0iF3vYXpyq49DZ4bw
         lxMOcEJM0ftTPmG6W2284taqiLTs870MVBvnBj+nP6m7tel+LYzxkr6ssjet87q5qOml
         0m34puXoogtgOEm1jU4OZUOaYti2gqwOTmSQ9r8KvMa4E0Py0efpeqGvpLq2X5X3JS1r
         UZ5Q==
X-Gm-Message-State: AGi0PuYcOQdssK37RmkXi0htOgjzvwXrwH3TraNIRkbiuzcJPJQsONR/
	hQJ33m9QpNPNzT0MkjxGlEc=
X-Google-Smtp-Source: APiQypKRLqR6mX92vKic3XDo1MuDou7nofXJHFxhwQK1J+RC/x7sAsODZJJcn8uYOwNGfjMbUN6qIA==
X-Received: by 2002:a7b:c359:: with SMTP id l25mr7532722wmj.149.1586562045682;
        Fri, 10 Apr 2020 16:40:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a9c4:: with SMTP id s187ls8371662wme.0.canary-gmail;
 Fri, 10 Apr 2020 16:40:45 -0700 (PDT)
X-Received: by 2002:a1c:96d1:: with SMTP id y200mr7804379wmd.114.1586562045147;
        Fri, 10 Apr 2020 16:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586562045; cv=none;
        d=google.com; s=arc-20160816;
        b=J6f8OLz3J90qUtKsMjWvbNfJKNA4LzYYuZI92oWMIiazuCTyb0ZLkMu9V30DIcS0C8
         +25xuo1VBZRRv7zgr4iV5ayzB4sFqs7UocWxxRUvi+uK+SQAayp3CdRhBlI/qp0tFL37
         JuZJprZtnN2HnMJSDKHRx3zCQ7GrH0SjUTHJi9v7XvTOp27gfDGLOc003qjLSd2jyIQA
         rSVFYxfhK8woA5V6vURd1HhwW+bvJYmmyLE7x2t2cC7iyNjTarHYH35RMOYn2CdnU+aG
         BHT5ML8Ki6HEM2+NIutVFq5BU5vlwNaUGGshY6vKEqkU6/ZzROtWE7hJI7ho3hGVLI1r
         66qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=akC13aQjNgkKQOHvbWZmZ8Y5pEzMr64eRNA8vJ5PYj0=;
        b=JhkllzimjZGzrzokD3iO3edbDuG4bhRLNffpmB9lOERFijMAzNWGFHWbIrzvbyKuB3
         0l8M6Sxzu42F3gmHyfVXgIyy1szsg46hv04u7sXsFLE0uzfa3mGef0iDc7dCddvnWCsk
         9T1204ape147x4uSDcMCwuWoBhScxzEOs4lwPtQTklXrQF2pre7WWvil+gTZ7WJzY2Vy
         Ua3Xlp3mDEBXa8rV8gYnc1ZIWtusHZU41m0w9cCxkQg0eJnOfaJSUOF5K3ZwiBVTCRGr
         SITen5xJp/EiAFQkCZ8KD9YlXCxK2IlYe21+gFad7bGcixCf6lIdqZvOyhmcvSr2q6dh
         4QMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id g78si216110wmg.0.2020.04.10.16.40.45
        for <clang-built-linux@googlegroups.com>;
        Fri, 10 Apr 2020 16:40:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23992495AbgDJXkmjfjpJ (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Sat, 11 Apr 2020 01:40:42 +0200
Date: Sat, 11 Apr 2020 00:40:42 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Kees Cook <keescook@chromium.org>
cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Paul Burton <paulburton@kernel.org>,
        Borislav Petkov <bp@suse.de>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] MIPS: Truncate link address into 32bit for 32bit
 kernel
In-Reply-To: <202004101334.A641706F0@keescook>
Message-ID: <alpine.LFD.2.21.2004110032550.851719@eddie.linux-mips.org>
References: <20200407080611.859256-1-jiaxun.yang@flygoat.com> <20200410090634.3513101-1-jiaxun.yang@flygoat.com> <202004101334.A641706F0@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Fri, 10 Apr 2020, Kees Cook wrote:

> > diff --git a/arch/mips/kernel/Makefile b/arch/mips/kernel/Makefile
> > index d6e97df51cfb..0178f7085317 100644
> > --- a/arch/mips/kernel/Makefile
> > +++ b/arch/mips/kernel/Makefile
> > @@ -112,4 +112,13 @@ obj-$(CONFIG_MIPS_CPC)		+= mips-cpc.o
> >  obj-$(CONFIG_CPU_PM)		+= pm.o
> >  obj-$(CONFIG_MIPS_CPS_PM)	+= pm-cps.o
> >  
> > -CPPFLAGS_vmlinux.lds		:= $(KBUILD_CFLAGS)
> > +# When linking a 32-bit executable the LLVM linker cannot cope with a
> > +# 32-bit load address that has been sign-extended to 64 bits.  Simply
> > +# remove the upper 32 bits then, as it is safe to do so with other
> > +# linkers.
> > +ifdef CONFIG_64BIT
> > +	load-ld			= $(VMLINUX_LOAD_ADDRESS)
> > +else
> > +	load-ld			= $(shell $(objtree)/arch/mips/tools/truncate32 $(VMLINUX_LOAD_ADDRESS))
> 
> This is major overkill. Just use the Makefile's builtin text
> manipulation:
> 
> load-ld = $(subst 0xffffffff,0x,$(VMLINUX_LOAD_ADDRESS))

 This looks like the best approach to me, thank you for the hint!  And we 
only ever want to strip 0xffffffff anyway.  (I forgot about this function 
of `make', doh!)

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004110032550.851719%40eddie.linux-mips.org.
