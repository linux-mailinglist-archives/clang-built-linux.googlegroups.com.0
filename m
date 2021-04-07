Return-Path: <clang-built-linux+bncBCT4XGV33UIBBU6EXCBQMGQEQO2KXGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEC63576A1
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:21:25 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id s23sf4859313plp.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:21:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617830483; cv=pass;
        d=google.com; s=arc-20160816;
        b=T2fWOjTQR3AAZkSI0St8BFJLHpP2w9R84DVndPiRfss6g2fQK2q4F+0wd098mjYNoA
         ku5FSOuhEuHvuQOnI+cACACxkMgU5yQ+Y7qykIe8dc9k2//ZW6l39yx6tqhq+zeM16Re
         kj0RsC4TP1QhMk00vb6CzkxR1wvTM/qDpusjQDPyXWP7LigcFDB1dueU2ofBM68zt0zZ
         IQ+mTmOU1WixP0RgX0kag+lZ0DeTbvd4xRPslqAlo8KDxoAAxnzO40kFbAf17byn5JGV
         4DbifU76J4jbG3/p3PmvE7MGuTNjoDtFY2JLbofRkbY2H6kOXY0fhul9Qp4o3iq3rGXv
         gktw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=q3YWaYAEPW9op3R7pez8f7oIs37SifDhfAILbU4wAH0=;
        b=LhPL+wZqzy2tGjMl8zrEBUg1Yd3bCjwNjB2Mn1BLEFCif1TIDuDPv8M97v+V7f6cLa
         QoTHZjCIlaJYrBfQ82VlJ3bkZ6UFHxVrL5epqxGlLlpubc61fQZhEJ7NZLfjn/0ZGZrt
         q3q8tbMk//toarDDLyLH3hG1z3BL36nQ3GPk+6XkolnmOWJ5e4pfOaOMTddT6odd4mq0
         6RNoI/3MeEi3vm2dNxir5j9WTfGIMDuWk6Zqnk0tWk2DA+e8eC0YiZRHX+MZqj/nN1mZ
         uJJ20CCX7Zs4zEmqrqPA7wVgxCYJYq8KWtLp8JNdEcQDVa+WjQDVaUk3sFmV/+tqjk6z
         gN4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=R73EQ1qQ;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q3YWaYAEPW9op3R7pez8f7oIs37SifDhfAILbU4wAH0=;
        b=KpNUle2nC0+5/vWLGItIRLkbt3//tJAIc+Z80JxJ3KJSTTWf8ggZSAjWFN5WUHbIB9
         7y69ulVGyfm9Yy68EEwVBOf+YaEywmdDnxBDvbKubBlAuCWwHc3wDhJeu7OCbpJnQ7+8
         CcA0JszbJ6eB/9/X7r4r++dFam1NJaKvvISoNUdBWP7DYppOaldYm8eU4ZjVkorps03Y
         qWav3c3c/nSKT07vGmpobA7RJeItI0HRJPp0r0SFT1cy1eGB4y2IrA1cfAZqoHqQDNY8
         lAH8cVKcQ5mFbqRRG6amhRH68zvF3yUsupogFVFRpOqsnIfQ1CGKofvu29CDyRotmYHP
         noFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q3YWaYAEPW9op3R7pez8f7oIs37SifDhfAILbU4wAH0=;
        b=PyoNkjveqfjy/lkNLACn0LbOaMwFCoZlYM+vaTB98fm4ELHTvepIj+tNR3KHzZannX
         7oSKe1dk11TA+2rwyEHQxUeDoaf2tZgQzuw6st0tuNfYp/E3zq4RnWsgXlS8pFII96cc
         TSpad6cICnZrsf656vJGJU3qjCmBoHc+lS72ICt4ji2Uqy7S9yhMWEtkfk9UdsWh1f6A
         /eiLsLHLTfITYNdKxAexrGvnwmyXsCyTm7H7izoD2AXU1L0imlDQWDsMx0UI2ES+RSZh
         txsO7GNIysro1LQKHawun6A3/3ZSOh9BtZQjXJKLFA+xKHHBHAH3XtwaxWMunYSl4RiK
         8p5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PB8ADaJx6YIl95MhVmrPX4Kdw/vwvbPlWuhNLPeoBR9+0bbtq
	rN5rM9MtgrcvI5xYD/rC6DU=
X-Google-Smtp-Source: ABdhPJyUzA+X/5+6tEPe9QoSuMYqaDokZSTAgwETSar/7GSqq57fd2XA6QKX/rwgO9FwC5rQdWwYVw==
X-Received: by 2002:a63:df56:: with SMTP id h22mr5119701pgj.84.1617830483695;
        Wed, 07 Apr 2021 14:21:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8e82:: with SMTP id bg2ls1528137plb.10.gmail; Wed,
 07 Apr 2021 14:21:23 -0700 (PDT)
X-Received: by 2002:a17:90b:344f:: with SMTP id lj15mr4971131pjb.98.1617830483096;
        Wed, 07 Apr 2021 14:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617830483; cv=none;
        d=google.com; s=arc-20160816;
        b=jDsGZm7Me1B3L66d495XVIL3LVneGP8b/eVG0MbyEQW8JlkVM6vojWf4+wLZ1iA2uU
         3RBoEPjTMNj3aWpVFnWlVlwc5cnaigMmjSEnLJwB881/jJPsUWWUrBCmXAS+SfiC8EsO
         QEIEUTrjKVSKeFMTWvdaYJ8yuAS8AA/UCqT7TGAsPd++0BvzCspXj3LvOo/PDfPOIHXP
         VWRC7sVXzir10fLWiuTqrvd3r0F0TwGqPGX+SWYr7b0zzMlyqRYd5bvXaCW+l0Of62Pb
         rFkCopbONvvFuXISYHB1wDLjlddr1h+NyX75Zc6nvtUNg+g6RW99SUj1+KHXlhVPdWd/
         PrWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=a47TEfns2sotKnDxQu666XX2CkzMdMxHYzjBfe8Jyqk=;
        b=Xf88e2tXACTQiQs/E4it30/zID0aNaRqoESynoZ+pYlmOt0Gkco/T6saTviDZAjX2C
         5wnPqF0oWabhhiOOmp3KG7bpBfMcWnbOCg2motdysqOtpDCkAOvp1Gw0GsjiW5rAiuC6
         iDMpCZVrZKNnbbUvbhbSQ8VpR6qkFVDqiwfNtxf+YRvB059Ctb1rA/9cEPsn+xXoU1ik
         RK1S/C2bjvn6H18Qns9jlm45ZP8ouq/HezVXpAmbdfQEqRDgHB278eZ9mA1jK0iUNGPF
         727eMKdnp31hm93XBu0G2SnksZowAFn0dH/qCwCn51EuWyBCNAg5a0F0d9z0EARgP9dH
         K3Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=R73EQ1qQ;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r2si524655pjd.1.2021.04.07.14.21.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61A9661175;
	Wed,  7 Apr 2021 21:21:22 +0000 (UTC)
Date: Wed, 7 Apr 2021 14:21:21 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Nathan Chancellor
 <nathan@kernel.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>,
 Prasad Sodagudi <psodagud@quicinc.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] gcov: re-fix clang-11+ support
Message-Id: <20210407142121.677e971e9e5dc85643441811@linux-foundation.org>
In-Reply-To: <20210407185456.41943-2-ndesaulniers@google.com>
References: <20210407185456.41943-1-ndesaulniers@google.com>
	<20210407185456.41943-2-ndesaulniers@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=R73EQ1qQ;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed,  7 Apr 2021 11:54:55 -0700 Nick Desaulniers <ndesaulniers@google.com> wrote:

> LLVM changed the expected function signature for
> llvm_gcda_emit_function() in the clang-11 release.  Users of clang-11 or
> newer may have noticed their kernels producing invalid coverage
> information:
> 
> $ llvm-cov gcov -a -c -u -f -b <input>.gcda -- gcno=<input>.gcno
> 1 <func>: checksum mismatch, \
>   (<lineno chksum A>, <cfg chksum B>) != (<lineno chksum A>, <cfg chksum C>)
> 2 Invalid .gcda File!
> ...
> 
> Fix up the function signatures so calling this function interprets its
> parameters correctly and computes the correct cfg checksum. In
> particular, in clang-11, the additional checksum is no longer optional.

Which tree is this against?  I'm seeing quite a lot of rejects against
Linus's current.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407142121.677e971e9e5dc85643441811%40linux-foundation.org.
