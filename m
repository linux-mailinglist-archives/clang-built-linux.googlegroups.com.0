Return-Path: <clang-built-linux+bncBCB33Y62S4NBBM4ZVSGAMGQECC7CZ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-f183.google.com (mail-qk1-f183.google.com [209.85.222.183])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD7E44B986
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 01:05:08 +0100 (CET)
Received: by mail-qk1-f183.google.com with SMTP id h8-20020a05620a284800b0045ec745583csf731913qkp.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Nov 2021 16:05:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636502707; cv=pass;
        d=google.com; s=arc-20160816;
        b=yR9ZKSFJg1+qHeY/iod6+Ttk3IYdXKqpP5aVOTUlEQ09oDpb3O4YgnCjDQxHWL7pPC
         W3l1f06BA22j1lFxhecaHuJZNcJORxwc6G130pt93SdS9dNCuAaZpoI/cGgc08A3mL58
         2T0Bzks1Iz+nEcT0xsHAknypsawThnXuJrooZMUpBseplfzM1l47pPHorqtkqG9fbu0W
         wf3P2sPcS3/m7/0SAswLedWZ0XnxURiKefyhWpsMKlNlKHrwoUg/oZYWogARA0h+GnVY
         lrc7N+wkpfTwLaVDrCRqasimaESfuLrHbJxhsxk/D21zRsem4cK+4lgzHjZjr2IuEFP5
         qkKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=Sv0UfKWQcBRt2oNWJk5wbmZBxMORRcWgyh3GjvvhV88=;
        b=OWS+G0W2+d8RG+gAKbRG0Hj6nExv+4y5L7qVBXBj03sQ1Rdp/LEsrxwVaVzLBvXSn9
         cSX5n5xpDIglf3g8KKBxwcdx1NW8HeC8skyL7fdfqmxgnvn6eUJZgS3mtHZL0EmhN0Z9
         U0JCjJQOrMCsp3T1egYlR6QCw5G7MjDa6p6IWe7hep1RP7/EoVr1fOJBMXt16qNYjNbk
         M94dL7ZN7gyX4U1doHAnJw3ex50m3XUU4zJZEjzwaLChTwcZ+d63SHwFXqnU/S7+xmcn
         scEq8uGraQM1jILyjlFKxAho++MXBbgTLHodLXIl30XFzmBODeuFMfm34pdAjMxfHcW9
         JwHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=MDKwUbeI;
       spf=pass (google.com: best guess record for domain of mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=mcgrof@infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sv0UfKWQcBRt2oNWJk5wbmZBxMORRcWgyh3GjvvhV88=;
        b=jl4N3NYp1PCSMvuCG5qlRBLIv0Su6bUG7ORmMWiN7n+wIg/ctJ9Vfv0ywA4el9S4DU
         dX/YM75IDNrp8v4EtKL80OICHysUXyWILO3ww9cwCMk7hMpw6m0fnGemlFz9X+vwlNIG
         x54a6mIIFjduwbmo6rztaPbrt2rQ53h2qPAlNH4LWIMLazH67PD4LIj0WyR+KO0cXB+d
         oETntDuNelY7R+lB7lLXPgOUkmvTEesaei0O/SWpTix+4xQ+9FeKAhMXzMFxFMwbJIaY
         3AFgXi+MJhlCbIlxspEogyK9Qe3yYB0IMXJ2OChUHhxf4TZlfnXBbhClqvgR5d7kChUG
         pgJg==
X-Gm-Message-State: AOAM5313XeCGVCPdbMEpnicrDF3gF7VTr4+745hvFskbbgI38rNUfARN
	zIKJR3RSYj9sBCYu5ZanbkQ=
X-Google-Smtp-Source: ABdhPJwk8iu7hBZhdtzzdTAKCxuYIPcoVMEJ6Ctmz9rnESPLU2YTggOXEOsGoAbqenSIoSqsobsrmg==
X-Received: by 2002:a05:620a:280d:: with SMTP id f13mr9235466qkp.31.1636502707496;
        Tue, 09 Nov 2021 16:05:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:bca:: with SMTP id s10ls776817qki.1.gmail; Tue, 09
 Nov 2021 16:05:07 -0800 (PST)
X-Received: by 2002:a37:a6d0:: with SMTP id p199mr9117500qke.505.1636502706996;
        Tue, 09 Nov 2021 16:05:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636502706; cv=none;
        d=google.com; s=arc-20160816;
        b=S9Da0bAlEmANd0WcfVsf9FyfuiiHinVDYwCc3gkD+MBUdocrF6AoiqzmYccLNHGxYN
         4IWIodFQUwAzE/Q7W2nAddjnVVeUHGVmG1XIaYri274+bkhdycCbugLPMkvYIENyJ81t
         TQ8WpOfA+rV0apnjn+Lu6YjVhrMdmc0N0qjfLUFV4p7tpcFkm1opeep0ATGmhI/kzZZE
         3adqvz9/r7eVdftyptYQejkzGVK+aS8+UQ5leVJVpahKBLXfnRA0Bn8Oe2dlGiBTTrV3
         MxinElgTNSlO0p6VMMYtwlOerO+J7/SyQBSldZgP3tvMeOLviXI1aNxB1UW5oeqMls49
         uT9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=W4JXu1rHCfgcAycLD9SJGRX/eyfzpCW48FoE6kijWtQ=;
        b=F99kr7eFpWpqq7nnvSDgFzjgBqYmtt8xhl+HWSuKPmUIlnrnDMuUOhAKqosTbn4/ux
         LNeEIQr9lWBE/J2ygzdG+ihwVPGQDJk9NijuILslSgne5helFtX8W9MPG7Qxv82KL4cG
         hcz3pUWpFISRZN6yhu81pB7jwP1WEKEH0rUu5+8dPsc++MB1b3ZeptS/ZSwMNVxXi4o1
         GQxsDtg3CGgHARwdte1/cvdrXCjH8V9x/QGEtLhjIqsvb5JDWS4iuVIfOAdIt8yDBix/
         MQIQxtF96eH3T/YzsoIjbekXLbtpyrsmyxUfwvTujTN1OMVjvGyqTLM44ltqg0eyNsD6
         SiRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=MDKwUbeI;
       spf=pass (google.com: best guess record for domain of mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=mcgrof@infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id 12si2048206qtu.0.2021.11.09.16.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 16:05:06 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkb6d-00474g-P2; Wed, 10 Nov 2021 00:04:47 +0000
Date: Tue, 9 Nov 2021 16:04:47 -0800
From: Luis Chamberlain <mcgrof@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Miroslav Benes <mbenes@suse.cz>, Julia Lawall <julia.lawall@inria.fr>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Jiasheng Jiang <jiasheng@iscas.ac.cn>, jeyu@kernel.org,
	ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org,
	kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
	john.fastabend@gmail.com, kpsingh@kernel.org, nathan@kernel.org,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] module: Fix implicit type conversion
Message-ID: <YYsMn6HpYHyJZ8c9@bombadil.infradead.org>
References: <1635473169-1848729-1-git-send-email-jiasheng@iscas.ac.cn>
 <alpine.LSU.2.21.2111081925580.1710@pobox.suse.cz>
 <YYrghnBqTq5ZF2ZR@bombadil.infradead.org>
 <20211109212556.GX174703@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211109212556.GX174703@worktop.programming.kicks-ass.net>
Sender: Luis Chamberlain <mcgrof@infradead.org>
X-Original-Sender: mcgrof@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=MDKwUbeI;
       spf=pass (google.com: best guess record for domain of
 mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender)
 smtp.mailfrom=mcgrof@infradead.org;       dmarc=fail (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Nov 09, 2021 at 10:25:56PM +0100, Peter Zijlstra wrote:
> On Tue, Nov 09, 2021 at 12:56:38PM -0800, Luis Chamberlain wrote:
> 
> > If we're going to do this we we must ask, is it really worth it and
> > moving forward then add a semantic patch rule which will pick up on
> > misuses.
> 
> Please, no!
> 
> This guy has been going around sending silly patches on his own, but the
> moment you add this script all the robots will join him, adding to the
> pile of useless crap we get to wade through each day.
> 
> I've yet to see one of these patches fix an actual problem.

Glad we were able to swat this fly fast.

  Luis

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YYsMn6HpYHyJZ8c9%40bombadil.infradead.org.
