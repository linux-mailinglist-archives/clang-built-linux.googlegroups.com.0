Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBT7A7XUQKGQEXH4PEQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f64.google.com (mail-wr1-f64.google.com [209.85.221.64])
	by mail.lfdr.de (Postfix) with ESMTPS id 1569E79C55
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 00:16:48 +0200 (CEST)
Received: by mail-wr1-f64.google.com with SMTP id w11sf30736256wrl.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 15:16:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564438607; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBSO1V6B02M4pIY1H+N50C4FaEGFdY8gF925ERe/UJDN18u3UlKJjJN2PW+UeCIDz1
         1rqqeGz28qkqx26CK8dCu73zlgcqpFMECIMeQN7/FPuriraGt19xZSCSVlGHGXZQZWqe
         F5h+VZZDQCWKX4Ae4PVM/gGMGwsIaa6c6XXZL3ZICKnGRU47AVrJCRsgE08Ktl+fO6xo
         iQxNVwx8Tir8o9LkyRmRFF+z4bpvHJ6d5Dtf+bjQE3OPVr95IVQ6yRNdy+awfEV8IRLp
         xBPRFBvayIS7Ifm2e7kRcpXPp3MifTbI2Ybcfe8yU48auSnzaS2GA06Cv/npzGBRYSjK
         +4LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:sender:date;
        bh=R2GeeZXONja5BLjAWHQdU5JhmDc5jL6MfC352LVcIDk=;
        b=Hk/t4M7zAgyEyI37N46F3arrrD3eyXElezB+J3YnOvbCIFwb+tDFrnBbIWUxjDIaZW
         lCYECxQGbVDJj7PPbJ5abzNwLvDkj7R++B1VJIewlQ+eiyo9JXGcjk4/WKPM7MilmgTV
         z7rOjFcZIwYpE06L9ubpjG8jdYSlF1rBct5t2cwbqd4CzBCutpchzODD0j5/h7Vx/EXB
         XbpfiHlvs6ElNgGW6PXRZ4E049yD0I8fOnm2juGqze9pW/AxjiwVgbQVOUUfb9k0glPX
         moMYP/Hsv6iwBmHG4HKrdD2jEGeCreE3PYmpBf6WQG6YPfTs8woMlTZiYyg1kC9HdjVz
         3S8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2GeeZXONja5BLjAWHQdU5JhmDc5jL6MfC352LVcIDk=;
        b=JZ9cIfI2Kf+1hxvbV0PCue8JsplWU8J/9DpQFy+i6KL7r4yVkItaPuFLaX8oKBnLIE
         cSFC5UYiV3jyuplErAFZybVxCf7znYEXfdW2Ct67BxXt/Ugvw+7Eoh1rxmsOJCl+TA6N
         greaMRuc+QzWYLNPxSPyn88mNEjeaUoiiexhmp070+IAW0zIxrdaw/YafShtmbcXR1uU
         Tu4R5U+uKmBWBqch4eJ3bXpHHGpGN4nECQq0kELArniCSuqYvIkXtaID9EsML808IDiE
         uYf8LsCHpYmmcDS94a0D41a3HL7Ks5AQIuL+i5WOPyBJAPiD4+Sgwdmy0ji6UP3bMFUa
         l1ZQ==
X-Gm-Message-State: APjAAAVdnryAV7udke371iW9eNQHCNasIHOJ08PkhX2Jq5W6lKPD3bSM
	32dte2AY0Sgz2fU1wukf9Oo=
X-Google-Smtp-Source: APXvYqztaiuTR5/tpPT6jChSM14EnCtvT3QOmC3Yt2Tq7dmpIKMLEJXv+uGaA4JcvWnW91Piw5weGQ==
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr96947368wma.107.1564438607769;
        Mon, 29 Jul 2019 15:16:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a2cd:: with SMTP id t13ls18737614wra.8.gmail; Mon, 29
 Jul 2019 15:16:47 -0700 (PDT)
X-Received: by 2002:a5d:6650:: with SMTP id f16mr33945421wrw.89.1564438607391;
        Mon, 29 Jul 2019 15:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564438607; cv=none;
        d=google.com; s=arc-20160816;
        b=iarB89y74ZEa+XSQwVCbOORAP2h81mwwLj2NEXOYL8++Jr1TTfoGjdZhKmKB70lmd3
         abVPY9gKeiRgQ7pnxNzfwSfZaZXTCr9O44HXF9VapCnrDxjitr06vguy9AVBbcufFRTZ
         0j4tFYjHlNXrgsa60XOlSyab6ypsMKaqC+wngdnHZk7UPJXfYK10//WF/G3Z/kkxIac+
         MqnHluajKSOh3SXHTu0buIOXCwpGlVoSgtPlrkXt+YPe+sO/iy+j3/jat2zqptYIykrQ
         myUmNFKCS+t09Taq3A+jHsJLhX3empWJWuqw3YD78C46bcfFFiKrJEm6jJGZ/IsMQoAx
         LKjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:sender:date;
        bh=4oV050ZrNhNijgFD5hLERQzypXWVcBOfEhocbjHaMPs=;
        b=vAybVeZ66wUoV9QKWbLkZXwS+97CAJX7rXpqFtrrO/GK219M+m9vX7wqdde7vV28bH
         +fgL0WJnODL38KTlFosXrduskPL8+91q+3hgvJRgfWumGr6d/2IjCXGdRwdkDwjQFuMR
         12GeL4MyTl2J3Uq9JIqeH/+L4AnOlMrPBVjZ1/KPLvR71QFNTFRwqwYK9RVNY/39+eB1
         2+WKjj3KpS8cSuaZNIgHC9djE9SSS1G4e+CTe//AAHk8uirp/dfxElLsXEyxyhhmAkN4
         ztYqrb9Rhlsq67JgtdQTZlkKD1mKyLuMCgROdIHsNIWUfM5c3kkR4Mtd6z09SGyjVuqf
         6dvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id y4si1880526wrp.0.2019.07.29.15.16.47
        for <clang-built-linux@googlegroups.com>;
        Mon, 29 Jul 2019 15:16:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23992779AbfG2WQpdRPci (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Tue, 30 Jul 2019 00:16:45 +0200
Date: Mon, 29 Jul 2019 23:16:45 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Ralf Baechle <ralf@linux-mips.org>,
        Paul Burton <paul.burton@mips.com>,
        James Hogan <jhogan@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Eli Friedman <efriedma@quicinc.com>,
        Hassan Naveed <hnaveed@wavecomp.com>,
        Stephen Kitt <steve@sk2.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michal Hocko <mhocko@suse.com>, linux-mips@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mips: avoid explicit UB in assignment of
 mips_io_port_base
In-Reply-To: <20190729211014.39333-1-ndesaulniers@google.com>
Message-ID: <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org>
References: <20190729211014.39333-1-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
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

On Mon, 29 Jul 2019, Nick Desaulniers wrote:

> The code in question is modifying a variable declared const through
> pointer manipulation.  Such code is explicitly undefined behavior, and
> is the lone issue preventing malta_defconfig from booting when built
> with Clang:
> 
> If an attempt is made to modify an object defined with a const-qualified
> type through use of an lvalue with non-const-qualified type, the
> behavior is undefined.
> 
> LLVM is removing such assignments. A simple fix is to not declare
> variables const that you plan on modifying.  Limiting the scope would be
> a better method of preventing unwanted writes to such a variable.
> 
> Further, the code in question mentions "compiler bugs" without any links
> to bug reports, so it is difficult to know if the issue is resolved in
> GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
> 4.1.1. The minimal supported version of GCC in the Linux kernel is
> currently 4.6.

 It's somewhat older than that.  My investigation points to:

commit c94e57dcd61d661749d53ee876ab265883b0a103
Author: Ralf Baechle <ralf@linux-mips.org>
Date:   Sun Nov 25 09:25:53 2001 +0000

    Cleanup of include/asm-mips/io.h.  Now looks neat and harmless.

However the purpose of the arrangement does not appear to me to be 
particularly specific to a compiler version.

> For what its worth, there was UB before the commit in question, it just
> added a barrier and got lucky IRT codegen. I don't think there's any
> actual compiler bugs related, just runtime bugs due to UB.

 Does your solution preserves the original purpose of the hack though as 
documented in the comment you propose to be removed?

 Clearly it was defined enough to work for almost 18 years, so it would be 
good to keep the optimisation functionally by using different means that 
do not rely on UB.  This variable is assigned at most once throughout the 
life of the kernel and then early on, so considering it r/w with all the 
consequences for all accesses does not appear to me to be a good use of 
it.

 Maybe a piece of inline asm to hide the initialisation or suchlike then?

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.1907292302451.16059%40eddie.linux-mips.org.
