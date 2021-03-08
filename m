Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBBFDTGBAMGQE65ULOJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3712233136C
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 17:32:05 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id o11sf3538900lfo.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 08:32:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615221124; cv=pass;
        d=google.com; s=arc-20160816;
        b=LJpu515i8Mg3kK9M9fOr/VupKZpuebMGkVGRNe6G9nEMO5V6SPAbFEbR5rISJ0qCj5
         rKBh81Xg3An9EMFuzACB1SavnOpuRdlGLkIZ6C0yyd191ZrSV9K3EkG9jQHci+gUwLnl
         y5prXwTvvaAkcfqbBhsZ2+Jvxi7qKp7zWYXM0c5cGMtUBkvoCrVJ4GTAdVScgyDUwJuG
         mdq+b3HI9rOrDtDW4D2Xi46xhD59u1uBqv1UkvuTSjPyi3Ik0ikC0EJ0yh40XcP0d7ME
         keWfZseO/MSpX/0epuF1Fa7bhNXiyIRJ+sPudTSVL7RqQpNRR5ufpcd7E2mG2g4aEItg
         3DuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sYEsDhZtLDPSCqFM7eXCo7nEjln+3JxBP3grEI+rREw=;
        b=YN6mJsEGOwCAnMckyYaNF7sbWnSvhNeb23JKq+V6w/cuS8Xlf906FroTKzculDS7B5
         JNCH1S3nbDFf90KKacFxuW4DwDuFzNigPtDeBiCwXDS8YG2+ZbJJxAzhXybN3iobrDHm
         lq1lOamHMJQLWmE3dOxS5gumN2aZ1rhI1pF6LreF8qwneqVIFWfR302Jd5nBmyB47zgV
         WMQoU67uJAL8feuf2E5Wdwz6EJMnRot4ca+sZEC44W5wT8OlQ5FGDMgUBBvsxDFUmdqB
         F5LsXT9PD3DXwJdPqLaTWrNes+2zKS08MIRwF9JRJRWKQ6xC+4DOuKRLkHXGh8ypGoQw
         kM1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=O6GPVLkf;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sYEsDhZtLDPSCqFM7eXCo7nEjln+3JxBP3grEI+rREw=;
        b=JN049z8+MI0u4DAmxb4PH07GoC8HTYhTX5p9HdCWn//6MS3iwS328QrQINP4j1l7aC
         YfjUB63nUz+D5UmQ61hxa0C3I7ev20g4POTgxL4ltY/0Bhvx6gK6UBXE/VoITzPB755C
         MsGt5awT3ticK6bg90xlkC6VvcHVjA65+j8CPRC5kdXxr7WlDXN3kIm+o5QeqBIIvgus
         S3bqCczCYkPKPeOHBowEHN1An/qN1TjpNHcfdr98yWh4E7/8hz/fqYsOwgDsZIr7KV76
         aGHCESvgrTg0eyBhh7YuQwP0/JRMYatZhXNoAdBzWllZulc9UdOPipP8+tDr6PD1IEkv
         1GuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sYEsDhZtLDPSCqFM7eXCo7nEjln+3JxBP3grEI+rREw=;
        b=aOYkrSk2fg0n80pONkE4PUzbiLU48gGngHtXlb+sU8sL9lpWKV+RzKNcdMcEoKmh33
         aq7GgYn0ZzkuARVRWDQuMTaaJ7nB2IqHRdtVmPNf/dsTbc7qwSLH6BwK+v1e4m2aSIPG
         tYmNTFZ2b83+ZBatrBQx8qGLzSjdvHtFF29GvlfTRoGudUspG4tYJahbxDgmIWvqxScB
         cnNx1JkUakFOA/kBrkty+dJPhwXnj/pnWtrMB2KuR4t0C9TaEHiUwP8RhuUbsn0ZOdDS
         kP3l0SKKiRgqWMEjJioBQDYwgAbIB2yD1YHDtucz7Lxr5tkM9h5oZyi4xH6VJnz47HoD
         pifA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GnUmMcehoLbBzCfAumXzOcaDPCQb4UQUZT69+XIlSPoDYmAvo
	izcSmVD3SQtK4qfiApk29+M=
X-Google-Smtp-Source: ABdhPJwJBCTxytm1GrL00T7TtadIbSmEkVWx5fDp9MdQvV3S+0kexBSAcHR2Z6QHoFnNUyMVRjMTZg==
X-Received: by 2002:ac2:5e8b:: with SMTP id b11mr14505190lfq.99.1615221124736;
        Mon, 08 Mar 2021 08:32:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls1094277lfo.0.gmail; Mon, 08 Mar
 2021 08:32:03 -0800 (PST)
X-Received: by 2002:a19:521a:: with SMTP id m26mr15268230lfb.56.1615221123643;
        Mon, 08 Mar 2021 08:32:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615221123; cv=none;
        d=google.com; s=arc-20160816;
        b=Ejqa3ohf6/vbi5aU3FFWAtMmvoPLKCRzAcz+GKlsDAg/jyRxuC9Jph8Syr9vdh2ccY
         NSICbiNxPheX8EU8/53X7oJacDzYrXLaxKe3m2jdEZ6kJxtNqpdnfmCEKZPOk3b0Rf+U
         GDgXZauBhCpQP4KbsvtDXR9u1hmSov9w2Sw3tXgo1dhJbRey5d2akuEBL2OR9zlu26l4
         Nj1avKqzhxhkQWmouQzGDHLGRXivumRGuSSl5gSFKKA43qLHPKmeHPuyUAOlBLKm5D9A
         +pD3VmUOhh8KOM73ItZ8F68R5hp/J/KXU46v47dvWNGesXwCn29tjCa3SEy5YSn7QYFe
         EUmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ctgZEZ6SYMXYKEHtwrX/ccObphSH4Tanp4Hu/eZWjco=;
        b=bMa2HXKYVBwBbYkkcy3oQhUAQN/WUSWS57aRozIO0Cl+owmfSyjpmTBygV7wTThTcq
         dzjB2AowsMUDU2td31ncDeCzFiapnPWOuHyKK0Q2ytvRKBQVOkb9nDPDQOcLTbu+7hh8
         xaB5tEmJ/G226uJjofBuUTIAWChaCB2fh2ut35QC1Bh4tC5XrH7gc3uAfQbCXXduK8Td
         ikMRpEx9CB6q0rCOgP3pKewCDW3tr3y/zCBMiEOy/+kaMH4xkXec6YCuBHpvL5x1arMG
         4ZIgSEYS71D6/ahuQBK6FsTcg0Q5Rv+xCMQvsJtuyG1wmtqctlq8Xvq/FT9khrgpPZWb
         tImw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=O6GPVLkf;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id d19si464758ljo.1.2021.03.08.08.32.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 08:32:03 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lJImq-00FhSp-Nd; Mon, 08 Mar 2021 16:31:18 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E6098301A32;
	Mon,  8 Mar 2021 17:31:14 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id AED8F23662BE6; Mon,  8 Mar 2021 17:31:14 +0100 (CET)
Date: Mon, 8 Mar 2021 17:31:14 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Juergen Gross <jgross@suse.com>
Cc: xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
	x86@kernel.org, virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>, Deep Shah <sdeep@vmware.com>,
	"VMware, Inc." <pv-drivers@vmware.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Andy Lutomirski <luto@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v5 00/12] x86: major paravirt cleanup
Message-ID: <YEZRUh6sYS+8Rm+I@hirez.programming.kicks-ass.net>
References: <20210308122844.30488-1-jgross@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210308122844.30488-1-jgross@suse.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=O6GPVLkf;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Mar 08, 2021 at 01:28:32PM +0100, Juergen Gross wrote:
> This is a major cleanup of the paravirt infrastructure aiming at
> eliminating all custom code patching via paravirt patching.
> 
> This is achieved by using ALTERNATIVE instead, leading to the ability
> to give objtool access to the patched in instructions.
> 
> In order to remove most of the 32-bit special handling from pvops the
> time related operations are switched to use static_call() instead.
> 
> At the end of this series all paravirt patching has to do is to
> replace indirect calls with direct ones. In a further step this could
> be switched to static_call(), too.

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

I've rebased my objtool/retpoline branch on top of this, will post
if/when this hits tip. Negative alternative works like a charm.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEZRUh6sYS%2B8Rm%2BI%40hirez.programming.kicks-ass.net.
