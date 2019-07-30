Return-Path: <clang-built-linux+bncBD4LX4523YGBB5VXQLVAKGQETCOKV7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 538BE7B36B
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 21:35:20 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id v3sf48146882ywe.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 12:35:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564515319; cv=pass;
        d=google.com; s=arc-20160816;
        b=zJoE1TiqysKyT5Nh8h7AibK5sVcQI1C9T1z890hsshrmmWSap+fbuH4DjrOLtxkr+W
         fXREr+3HFL9IoB9IpOB5rDuthx7T/X5uuGUtDvK/YDbULMEmHxqg04JgjMTnlchOEcdE
         R+itmhqy3vPn+auHG/+GcV0amlrIl02PzcLKVNpQr63blJzZavy+R3vHiGzks8n6qytH
         dJDlI0EXucn8wDtJV5fO5oCroLmtUZwrBhd/ta5RgNaH7lerJksB16Co1ggpFrW19ol1
         PWBxxwiZoLLn9QGujChxut1QHI5/m8ajSIrj8OVVSWEr/esFNke0PEbMe2cMCV4OHVJx
         qypw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CfEvBUAZi7xuOir7++YPkIBJVvGYU93txgP5QB+Z5Ao=;
        b=KiBPH13DGLVBGuvHKN5YVKWoGmTK0ACVtVFORcZxuxNInGyHykcCfvvaSFlvK8PGxO
         gCECuQrm5Nmryrra7Tq1IaOeBnfpBWpKYk0NJSHiycBtUrEyYbpk/ZcliXOKSpbiPM/F
         /ypvpy9k0E1zQJM3FlTozGxyQO6AbpKxP2aH45cE8zqPB4V+deJRnspDN8OeWy1xjTmz
         Gp1VVw3yDKVF7HIvONwwfGVANAbGynyTq+SMGYBlyGnD8Vu2YyBMaUjfDgK00Vg7h982
         bvDB44acZNKiCdL6oLPV3wP2CoC7s3lyvldJjuB+i671p+wq2gsCq4ZdcQq4+Iiyyl4v
         RrBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CfEvBUAZi7xuOir7++YPkIBJVvGYU93txgP5QB+Z5Ao=;
        b=PzyoiBgBonmBLR64iPDKjv9huUSuDBGWnzvTRZfIEKtdI7nYcBM5CrWfnytHydGZzS
         x3LoUcTqzjlT0sekM6TSsXp+ADbE4ik88eMbPcBqfLK7QSyDZrFcT4DZAHFhMI4Xm2C6
         W8FVrSlt5uzZqOiy0fJqa1DBr53GgoxyKnWQcrNtT2BA+TStKxvQ0grQsELengv9eQxE
         9XlVTItuzIosex6QX2hlx56cLLjBsCg2uqeUY3bsGFeia0Ip7eaIeiVyAVsZyiK/8rOm
         T5yowaIzSvbaagK4OcdLzEkR5C7fnuhxptNQNvUitQs9vYtz7jrPhS+6N20uA4nbleOB
         V2YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CfEvBUAZi7xuOir7++YPkIBJVvGYU93txgP5QB+Z5Ao=;
        b=RV38lf4blP2F4hRl/HGLP6/ZqLjAR5LGD9vV3szB99uItIk+e8CDCk7T0pk+8rkuiQ
         mNmxTDxOBL3UjyuqWci+VDkDUVjEKslfxd4MNQ8htLSQuJlX4d7p1uH1BmjtT8CJy0xu
         gAZgynoXy/WYP5WFE6taQ3zN9xcfe8WH1kxAYcR4VnAIK+fFLzy9y5lkGKb8vokSPDt5
         gseHcouxwujAV/qqudT7/zSphug7mQwoQg6iIvzaCVcs1UzRa0/ZZZOkOAef6kkEGi9L
         bY3KA/OEel18HxpxcQL7eY9CQLW83IiBp3yXgo/j9UXn4VxT1+KgF8O5v9+k+BVVAdf3
         fR8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhYGjTkOe5gDIpLK35XpbVlcOs91l/QwaTMbtzkSdJ6GRbSBDr
	aWwSNKOj65aRGDHdyusV4Ko=
X-Google-Smtp-Source: APXvYqyStvWY7gmd6dzy4kgIGO8+0K+Zvgn9CUlnrsF2N7M9x1h/hoOHwub2vXHMD4O0CidjQ1phWA==
X-Received: by 2002:a25:68d4:: with SMTP id d203mr31774748ybc.94.1564515319003;
        Tue, 30 Jul 2019 12:35:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:14b:: with SMTP id 72ls10516039ywb.15.gmail; Tue, 30 Jul
 2019 12:35:18 -0700 (PDT)
X-Received: by 2002:a81:9306:: with SMTP id k6mr73561006ywg.158.1564515318660;
        Tue, 30 Jul 2019 12:35:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564515318; cv=none;
        d=google.com; s=arc-20160816;
        b=z7WBr43uAU2HMK8UAhZ40Rq1cz4ex63QSmp1qgHtISgA1siOjdQ54+sn9gbX0fA3ZH
         x7xo9wSmpmDOwk68CDthq9lMoXsMAVU1Es/K5IJKwr8ZeenGz9rlv/l9gUhoFPx9pwwO
         MFEpXzWu/ppflCw55XnsLIBrQNiGbbkQsfdInmRxQPkkhMTg+a19hGqHGGJfdYwYsMXv
         KAZn+eVJNMvX02lOdwveCJUobaUMJ2R4WrQATTrT9T/eiMiHJ3BxpDSBc4mKaUfXKXiH
         zcS4rSPuAzylgSIV8m/lo/fUxwl8oIgpCj9d8E9vjsrojcKx5zmrATcARseqo+p0Mrnp
         Lnvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=P0et6mbQFASrMRRZbrxPsI0GcfmUTonSbqT5jLDhZt0=;
        b=KPG5NZgs4U6g69uAzdpMLeugtWwrMfAVHbVHe2ADJ0kJssa7kSN44OhaQ4n7uyCaM4
         KfDwiKReUIVLdUsxddTa7IfaSCY5HGyJejH+NPjW2zKs7ALgMQSC3vZmuiNr2zV4PfYJ
         99EcGZTYdbWcliCRDT7MUr2OEKFcfO7RKeOEWRq61FvswkIkDdR6DIB8uzqGz/lcHINR
         WLsuC2z7cq8/CGJjcBSMTj227LhB6T4gNB6hCrVswIUgC0VyDiRkkP3qrPynRKzJzy7d
         IP++bPXL7T+il8+dbgN59wH0J/Ihs7qFi57oV97hjvfCpkH0X/ufvgKkrekKx5IqGkzk
         EbaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id f131si2536369ybf.5.2019.07.30.12.35.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 30 Jul 2019 12:35:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6UJZ30i024763;
	Tue, 30 Jul 2019 14:35:03 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6UJZ26C024762;
	Tue, 30 Jul 2019 14:35:02 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 30 Jul 2019 14:35:02 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        christophe leroy <christophe.leroy@c-s.fr>,
        kbuild test robot <lkp@intel.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
Message-ID: <20190730193502.GR31406@gate.crashing.org>
References: <20190729202542.205309-1-ndesaulniers@google.com> <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org> <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com> <20190730134856.GO31406@gate.crashing.org> <CAK8P3a2755_6xq453C2AePLW8BeQk_Jg=HfjB_F-zyVMnQDfdg@mail.gmail.com> <20190730161637.GP31406@gate.crashing.org> <CAK8P3a0_ovcX9tOo1UQ3_1UmM=+A2X=yErw27i2pHOj4XD40-A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0_ovcX9tOo1UQ3_1UmM=+A2X=yErw27i2pHOj4XD40-A@mail.gmail.com>
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

On Tue, Jul 30, 2019 at 08:24:14PM +0200, Arnd Bergmann wrote:
> On Tue, Jul 30, 2019 at 6:16 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > in_le32 and friends?  Yeah, huh.  If LLVM copies that to the stack as
> > well, its (not byte reversing) read will be atomic just fine, so things
> > will still work correctly.
> 
> byteorder is fine, the problem I was thinking of is when moving the load/store
> instructions around the barriers that synchronize with DMA, or turning
> them into different-size accesses. Changing two consecutive 16-bit mmio reads
> into an unaligned 32-bit read will rarely have the intended effect ;-)

Most such barriers will also work on the copy accesses, I think.  But
yes it depends on exactly how it is written.  The {in,out}_{be,le}<N>
ones use sync;store for out and sync;load;trap;isync for in, so they
should be safe ;-)

(Well, almost -- writes to I/O will not necessarily actually happen
before other stores, not from these macros alone at least).

Should be pretty easy to check what LLVM makes of this?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730193502.GR31406%40gate.crashing.org.
