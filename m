Return-Path: <clang-built-linux+bncBDAMN6NI5EERBS6NYXUQKGQEYWM7ZUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E736E11D
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 08:44:27 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id l4sf6715814lja.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 23:44:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563518667; cv=pass;
        d=google.com; s=arc-20160816;
        b=WUNpfa93gYhtK7Ga2AisryS4M7kADPzMJjiJ2HKzar7DPP4n7Yq1w8A6+yCyE/UysH
         a/B8K/t1/opGUajTmtXoni11b3HfX3qmbku0y4ilu5gTtQChGPpg0xL9HjCyELSHcB9a
         h4iceOdp/ooAdm+DaoQxaz8mCy8qov3KG0EzaibmJbrFflHYCxY8jUj6t7BkaNRPOFkN
         WAP437E/WfrJck2c+C0neSFY9TXO/Ark0hsYF1/mmdxfXBJ5piaAixsy026DgmWhEwJY
         hAp7vY/m8vi8hCsFBawM6bvT/ibjSNzq3Mn4W2EqZyrUDi+os1UwOT5aVtrigBRUOPb6
         vfmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=p16VI5eYxs4LpZsV8M6HAJ4ZdTSTDt73WA9UQ38+Y8g=;
        b=fAMbYR0qcROl7IEt1twjSF0+zDn0fV2Rzi/1Kd3yN+YJBMN1ujN+/GMqN8Gv0oHL+5
         dlF75vqlUZbi0SMfB1xQuw2cga3xZiLifuVw9IEHBAN1fYtdbD1APCzkLXOZiwz0HkU2
         YR4VMtjSBP8S1Axv5iG3QpgjQJ1ASx+tmpsVA4NHZuu3yZ+K5N8QvH0wXonzpodAu5MA
         /0vZRxPhIbLWvvaqKQaL5qxljs9MoQCLJlEgTVTVsthVOKuxLmhaDVsPhiNomzDy88nn
         9czL9EwkLbL1bf7xVKqmMScTMxuziT6CygevakPIecP+O6Lish2uvacDC//IWSXM47xm
         bRaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p16VI5eYxs4LpZsV8M6HAJ4ZdTSTDt73WA9UQ38+Y8g=;
        b=Eaz8ao6dOT34LtY5pSRenCR/UU5YjZrVVz3AHX5cwW7RIOOtuxcSzJV8PG21DgTDqc
         vPgBnOX6ONglvU5/XO6kMz/Zw0il4+MIjte4g4VoM5BmUlx04rZziqfFsS7lS8Wy7Sce
         C4K8DV5YsXjNmp+iJlq9HG/OCd3C6G5CRreaLwvHEbLu3SV6h0HWpkzxE2RMDVEIKc+c
         pQg1kmc/S//nN9/FHpXlCeNqs1Rs7qNglqV7ayJzWtItdkL6oGyUNPcQY6+gcfop9AAe
         wc754I57/yxeuoCsrqg3EmgyzcMvNJkc55eMoLLQUVgdYFQMTnkKfk4T2b4DyDmnLVAI
         N9Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p16VI5eYxs4LpZsV8M6HAJ4ZdTSTDt73WA9UQ38+Y8g=;
        b=OHXkWaLtjEHU0HW5vdQrGQkbYSYfMphMIAs77XMKBgovuF5gN8pE+Uw19jcfugPisZ
         geivjI5k36rBvooLIyQB+VxQTbIJiKG3beWXuVVfCZ8zuboDXX5RNrrH1DQfchC+5/iE
         x/e1rb4FFR+4x02CO7VrRDtI4jcEIOyPl3UNGPBssMTnZ9gPHGJ9QnjueQqjHPf3dTrj
         0LEaiLlXpX2slouNBzs7PyOkU1b7sxadxHnQwufew4XBdlgRg6Fctsl5x67hdpPCcggF
         TobmBaeoz5QfiN8TKzdGeHAks8NuAebw5/ONqtqjg/TkBFXCRcREUKfCjAGtbfk3t20I
         qDNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpt9UHxEh4LPXVd0vWSFbIYs/Hr55hE1NmTCa8bcMgLX0oIWMv
	EvFCzYwgZYS1VdGfHKga0Og=
X-Google-Smtp-Source: APXvYqzOGypsRAuRG4AvmjYe6rsbu2T1hncL28BNHdlV3XYx6EaRuK6SVOr2+gySp2wF/Okbnr8PfA==
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr11299514ljk.106.1563518667144;
        Thu, 18 Jul 2019 23:44:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls3551910lji.0.gmail; Thu, 18 Jul
 2019 23:44:26 -0700 (PDT)
X-Received: by 2002:a2e:c51:: with SMTP id o17mr26686202ljd.157.1563518666702;
        Thu, 18 Jul 2019 23:44:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563518666; cv=none;
        d=google.com; s=arc-20160816;
        b=hBHgPevdYZRM/NNHPFRTOt8CVLf4ATg7AItKWOG031jcxJ6NiOpURmA34mhdzKTmKM
         8iMytcBZfBZNv4EwuXAxshyVC04QbhtAmep/5ygmVfdjeCNvH4inOhLXQgL1uLfRojpu
         MFBm7mbLNGoom6V1qlAfVTL4veEP0wW7DmIrEGTKXiVLqb0ipzHYYfYlES1AlTYEe1Yh
         ywnMSu3SQtS60Fvr76rvqoBqqmOmVLzuDDA2mblni1yXX1PKucRNeNl94ESSLB4g2Dhk
         G0H1Mlt/ipEQP7cZEODaUuPNphllWa+NQbrht+0i0pfSvWuG12ZJOC2i5jg0793dHTDi
         TP6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8kSjSnndMaQfD5OO++1nRfp4dmTTfGOp1qmlZPdhORw=;
        b=PYHbT1H7w7tOxWS4recvSu503FFCgo3ghkZgWXusVLcaJYQ3rwMHO/lYgpvSpRQ3qY
         7IoSQYqxh83ApOqXQEqS1klxqwEiBr8mm5jU1L+JBhv5gQldYE5vXNawPKybZHgNNZMl
         ihHwQVl5eE7S+5ZCS17ILAHi3eD91jbQBCILWxb7JtpFK+C1ApN2Og1C68wn01oZL3Ex
         1i/ChkbCLlvjba97BC/qQP6g2CA//qfmkfFUi8Huql4o4kylm8D53ALoCHdCiyxq+2Lk
         LGFwOXNr+HAuNLMJi0bOJQ0xNnDJryyDOAmQtxQkVEBxQd0Y+q3lWJIzMiIxg6R4U3bo
         WSgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id q7si1758826lji.5.2019.07.18.23.44.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Jul 2019 23:44:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hoMcx-00076v-8g; Fri, 19 Jul 2019 08:44:23 +0200
Date: Fri, 19 Jul 2019 08:44:22 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: LKML <linux-kernel@vger.kernel.org>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Josh Poimboeuf <jpoimboe@redhat.com>, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    Peter Zijlstra <peterz@infradead.org>
Subject: Re: x86 - clang / objtool status
In-Reply-To: <CAKwvOdkYKweg5A6jwomPUjjkRWq5=oVMVM=Wcg=ho+crOnr3Ew@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1907190812040.1785@nanos.tec.linutronix.de>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de> <CAKwvOdkYKweg5A6jwomPUjjkRWq5=oVMVM=Wcg=ho+crOnr3Ew@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Thu, 18 Jul 2019, Nick Desaulniers wrote:
> On Thu, Jul 18, 2019 at 1:40 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > after picking up Josh's objtool updates I gave clang a test ride again.
> 
> Thanks for testing and the reports; these are valuable and we
> appreciate the help debugging them.
> 
> > 2) debian distro config
> 
> Is this checked into the tree, or where can I find it?

See below.

> >   drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool: evergreen_cs_parse() falls through to next function evergreen_dma_cs_parse()
> 
> fall through warnings look new to me, but Linaro's KernelCI is
> currently screaming with tons of reports of -Wfallthrough throughout
> the kernel.  I assume they're related?

I don't think so. The compiler does not warn about a missing fallthrough.

> > 3) allmodconfig:
> >
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x56: redundant UACCESS disable
> 
> Do you still have these object files laying around? Josh asked for
> them in a new thread (from the previous thread), not sure if it's ok
> to attach object files to emails to LKML? (html email is not allowed,
> are binary attachments?)

I've uploaded the configs and object files to:

     https://tglx.de/~tglx/clang.tar.bz2

contains:

clang/
clang/debian/
clang/debian/atom.o
clang/debian/platform.o
clang/debian/i915_gem_execbuffer.o
clang/debian/.config
clang/debian/evergreen_cs.o
clang/allmod/
clang/allmod/ubsan.o
clang/allmod/i915_gem_execbuffer.o
clang/allmod/.config
clang/allmod/sata_dwc_460ex.o
clang/allmod/common.o
clang/allmod/signal.o
clang/allmod/ia32_signal.o

i.e. the .config and the offending object files for the debian and
allmodconfig builds.

Thanks,

	tglx


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907190812040.1785%40nanos.tec.linutronix.de.
