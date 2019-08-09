Return-Path: <clang-built-linux+bncBD4LX4523YGBB2WXW7VAKGQE3QY4TFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id F08BF88551
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 23:55:55 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id w5sf71565074otg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 14:55:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565387754; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqQMQaKI74eRqrJ6STSSiqKby+6PdsPK7cjtshucHfLLPhAf9aKQsmFoQy3lDQFCJN
         XS6KWjSLEAGCfNeDXPKQWuMnmcKTbq5aVJ6xFGEx7i79ruZdtN930vOrv0a4qNac0akk
         q9+hmVk2ckVuTKAOv0QmtygsBcKUWtw9VyosSyKj43k9u5ehWGhdFge8W6aGgm3/IbPl
         GHJcU+XGcs+LzO4g2f1nVRV1MAgIOJa4g426zAQhFOz46jpXGcKdaVZEORf6YqZQeT70
         tvw4xkJhVN/4jsI03Y/R26kpG1l42u053IOtZMt7rXBZz56nqNqFRKEp43FFicwYUi5r
         P/QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0kjEf9f/+xNcnhTaVSAm6Q9ripn1VMaaHYiBsSkjBOY=;
        b=wboZG+Fg6LdatSBGC0++i0X1aS1nXveFd5LPgeiWCAM8Owy49AiBgtmyLfqnOne715
         Al9UAcEXAobwt1iCMt/uhi+cnM/mGB7D9zNC/27oEe4fatVqtokogg1iUpJ4cJDejxjn
         ZIMkGMg6BrGZvrPDgV+ilWCdsiyFpYgCPJmRObhATlSnVWmBvcXQ+sdU8eLa5FIZrnEp
         Tp3fi2F8fJzfZ8Ae2Qy2vDUztOHblSuSFXZHl/mEE84tPcbIJt0dp90KfefVz36gfr8h
         oQABfkOIzPh8O8OkefjqhTvURY5ocuh9aoMW+uLXuUIgUKrQ/VLqGcxF9K3lghP3LTI/
         vZyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0kjEf9f/+xNcnhTaVSAm6Q9ripn1VMaaHYiBsSkjBOY=;
        b=H/2vzYqYsew+007zYf4Rx04+322TrVVHmPA4Uip6bBVDBBsiwoaxhYoNKv11VWdWcE
         bEqU2crDjM3cJHU5bTDVXttJ+yQnjpwv1M4tt/dRK6/Ci87Z8rYAwgRCjhlj2hmbX4JE
         MWibmHf1kg4uWH9sSyhRH/xzVSnj41e5/OgOAmi5zUapRtQsOq8XSNQc271xjgRP6wF+
         NxXY/90z+aYe96m17A8NmW2XM+xdqnbjWmMLT/EertpEH9xnh4eyrfQPV85wr/c0Rhaj
         +s6VrmgrqL6yKb1BWAgMsxxdTN7NpfDpK5p5RpDQxv42+oDrQN5zDmdqKrdUfQM1u+/J
         yuxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0kjEf9f/+xNcnhTaVSAm6Q9ripn1VMaaHYiBsSkjBOY=;
        b=RQQ3dHlOfHl8AFZrvDgTjF3SSNm/wQcnk5YRf0LBovDfFjx8cYN7sb2twx68CBNruP
         cVtAFqeMJCFQHEit/UjVLMfS65O78c+ad2F6fqHxkbkLewQwl8MUTQQYxV0XkqminnIp
         V8Zt0eQOefNRwJtHe163yIYXboJifrMG3RFwe9ak40SR/wN1tX0Jw1gBQWZFWSF6FOBS
         LIKvfNwbdqPfwcd8LCmDjKqPeSLmRfUPDpZV12wusYpOq4JPRdYt5djaCm4LLpC/Ex4Z
         5tVKdv/fNypB9+lYFfMzaUdjSR9KEXVTku5Tp57GP745BumcAPNgSpuWeL2eYAhCDr+O
         rBbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgclX/UMgEwOlL0EwuXNAiNlMYwLilSh4K+bbkX2GqaHONWxbB
	vzWS4vyIH24DsuDvPszmYmc=
X-Google-Smtp-Source: APXvYqyyiKx86A+KlSnMKk2ze56UnCfYk6Ld7QoMNXVdXGSHPesLmmhxAgGSbqbfA6F1sKXo+3BuEw==
X-Received: by 2002:a9d:744a:: with SMTP id p10mr20462207otk.321.1565387754492;
        Fri, 09 Aug 2019 14:55:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1aca:: with SMTP id r10ls141222otc.16.gmail; Fri,
 09 Aug 2019 14:55:54 -0700 (PDT)
X-Received: by 2002:a9d:758b:: with SMTP id s11mr20632304otk.130.1565387754219;
        Fri, 09 Aug 2019 14:55:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565387754; cv=none;
        d=google.com; s=arc-20160816;
        b=0GOwo4MhRg1vpwpIAqnOLx8scwy0CT9+YTjJ0D8EzcLuIDfSfhevUd0lTLrKsI6vJA
         e6f7oYFSVB0r2R2mnNNJgtEMahTq6GK9Nwigf1feAFWrB8dGlQfU7tTeM9ka39reascM
         JqHH6h1fhFtbTgDjbPsXWGd8xCyVlxfJAJjTDMdcERmMllwm/K6ZBV9tH0UaMIjq0fo8
         y5ifx7GBZl/wdO+Imf+VUFiZ4eTc6wnzU6wBtySXligzrGNTnjgwkYtdf7UZ2efNgEQD
         7FsQlC2kMg1+2U4jmxZUn89ezm+fxaF3DYmz/IsaEd7iP4lamx68VgGLbb4mqTcIUvVz
         XJVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/rZEG6CcOetRqFIPcL4b0Og1hlvdPzyamUkDUhSPtzg=;
        b=Amw8ImsI17i1DB1uwP5lvFiE57kG4kUPMQdE1Di3EKVA+Pd6W7Hw+0ejOKhpTEWhgr
         jVCZgkVKXIpWSQAfNibIprFWhNp88/E1zG20Ki4F5coMv4gRkBU4138Q8HaIkpY2D+jz
         ThLXuKwWBFTgJARbrGPcCLiSsy3bD/k1jGFn79+HMHeX9IGv0UIXVr5L66Kg8//NzWCJ
         uc6qZBMHzHppNJyAw/wumH1wE4o7+ivqmGXB87bjAwJ6I9MSY4WUEncr2Z6WMqKaCt+j
         glHQC0iGPRWADVkelA+j9mxnm/L6N96efJGDeN3NcMY2KPPeR3FyOPg3tX+8BR8hLx4m
         P36Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id n27si4828328otj.1.2019.08.09.14.55.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 09 Aug 2019 14:55:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x79LtXlt029610;
	Fri, 9 Aug 2019 16:55:33 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x79LtWbT029609;
	Fri, 9 Aug 2019 16:55:32 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 9 Aug 2019 16:55:32 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        christophe leroy <christophe.leroy@c-s.fr>,
        Nathan Chancellor <natechancellor@gmail.com>,
        kbuild test robot <lkp@intel.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] powerpc: fix inline asm constraints for dcbz
Message-ID: <20190809215531.GN31406@gate.crashing.org>
References: <87h873zs88.fsf@concordia.ellerman.id.au> <20190809182106.62130-1-ndesaulniers@google.com> <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com>
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

On Fri, Aug 09, 2019 at 08:28:19PM +0200, Arnd Bergmann wrote:
> On Fri, Aug 9, 2019 at 8:21 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> 
> >  static inline void dcbz(void *addr)
> >  {
> > -       __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
> > +       __asm__ __volatile__ ("dcbz %y0" : "=Z"(*(u8 *)addr) :: "memory");
> >  }
> >
> >  static inline void dcbi(void *addr)
> >  {
> > -       __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory");
> > +       __asm__ __volatile__ ("dcbi %y0" : "=Z"(*(u8 *)addr) :: "memory");
> >  }
> 
> I think the result of the discussion was that an output argument only kind-of
> makes sense for dcbz, but for the others it's really an input, and clang is
> wrong in the way it handles the "Z" constraint by making a copy, which it
> doesn't do for "m".

Yes.  And clang has probably miscompiled this in all kernels since we
have used "Z" for the first time, in 2008 (0f3d6bcd391b).

It is not necessarily fatal or at least not easily visible for the I/O
accessors: it "just" gets memory ordering wrong slightly (it looks like
it does the sync;tw;isync thing around an extra stack access, after it
has performed the actual I/O as any other memory load, without any
synchronisation).

> I'm not sure whether it's correct to use "m" instead of "Z" here, which
> would be a better workaround if that works. More importantly though,
> clang really needs to be fixed to handle "Z" correctly.

"m" allows offset addressing, which these insns do not.  That is the
same reason you need the "y" output modifier.  "m" is wrong here.

We have other memory constraints, but do those work with LLVM?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809215531.GN31406%40gate.crashing.org.
