Return-Path: <clang-built-linux+bncBAABBPE5SL2AKGQEQD66M3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F0819AC11
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 14:53:17 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id r64sf20390866qkc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 05:53:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585745596; cv=pass;
        d=google.com; s=arc-20160816;
        b=luccdm1Wb3BA4GAzdg83HXXYZM5mZ+WdDFLRhKGNH/vrfydaZU7Dt2JxAXAaKMh4j5
         FzlVEJAlYgHbr3dSF99BMzC8NSKhBZO/Qqm2W/gC/I48A1t8hfJbL/SvFrwC7tuPuhbc
         JkM0kbkDEMh0KO+c0Z4UIslhixzatRUtjws+T+cjaoOwVeJnbj2bVg6TTey1opUlbTxW
         6rtXwyAH7DF79yS4RPpeYG/od6WBUcV58joxfRsvR1aZF3I7irRhqOLe27fFGQVDRUkI
         ATH1HV/mQm88mBrRQocAdOeMd1liXVk9b5awUeBlUi8zRkSidGvtZo3kk2+A+1R9kMIP
         aIaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=XdkMl2bqLAe7i3QHEBSent2LuCh2VJIyltfJRkm3dus=;
        b=pmfRq8J/jzFur0YxYuuJebERPieokfdiLCncaRcKk729eEwk2WRrXvXPtLy7iVunGj
         iye7eZtSX1LEdibtKsCq2I/0AyMduVMo3xuz1ZYIIAivHxWZrHFfE9qHpaz90fTdBdmL
         tUag0XwxR/wyfl6c18QJqxYc9eXj5sd6bgtUeSRvMGDxR7+euGHTeVuLd/mtAEbI9HVq
         fBo8Vk8YI3AcancdrY/IWOo9oB+v06+3VHF7uJaqb8GjOYsUI7TBn8aXsGiMJipJNgF+
         nVe1K0MImiTXgQS3/bEuxn1sPRyFV+3bdzibttmgK6U5mahW56dkiTchEfZOuFh78fhU
         qs2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XdkMl2bqLAe7i3QHEBSent2LuCh2VJIyltfJRkm3dus=;
        b=MRPqjNt5t8PnyE6ps2XtmNhGF6LCJPK545nMXb4wbutgOGjgJ69FmG/X17P0bgvx2s
         fdZlnsH4bHTmBbBRy77/iEii9v0vxzeOgg2lIoQOn5bxgTAkIrZjQzs5RwPp7ahtaqD9
         cPXSVOW+3ZD4UK+FuGixbDp+2cMCOAVrvd8qqbXexnQGjs3CF3wq6Ykqrr7IN2imRbZt
         5i2Q1Ac5EmmIo8U0CZrJ5BD6LtMJa7WyRIG0Lo8W29+sctMdlZXU4upzIPO9gKRv6GAo
         0IPT7wiOwqs0NMKSfbJxobF4ZT9G7yeWcAqXHJG3PJiTI6f+KNCzWO5OuiyzOI/n2wH4
         LpBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XdkMl2bqLAe7i3QHEBSent2LuCh2VJIyltfJRkm3dus=;
        b=EdJ4A7Wi3MoJPcHNjahFD1WF+QisNyEMpwGtLieeYSyhyFdMjTnMQxdlDAWpQivdfl
         HMDmInzR4dLEQFLlTuB/dvxsgIhkTmMufGgDEx7Un/pEv71KAv6A3iLY7qNaMAecDEpK
         Qtv9pTYZTs5NilYK0t/19UGQGlyB0hdiO0EZ/0ZsLcnFbRlIGd2j4R0EcCNxCW1ar9gR
         H61qzYGZRIKOLz8PKdXZ4mFg6GpoB5qHH08AbE2IIYhOj0C1rcoVYWe2dnUu7tToE9SI
         vy1FrX3wM2blvrbVb93VgKsyOC7QM+7KmjGWF5GYyq4LhLK+2mCq2W2LO45F8dIg0nBy
         y3Xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3+ID5pKQbHKyZtOskNqYqVYHBpQZfu6MjGHAV6qzBcDcCcVBfk
	dIRWP9M9ZUyz6eU2DTtJoXo=
X-Google-Smtp-Source: ADFU+vv9xkLD06+CQ6nmNZ0U/1IdYB6IGsAU+39HfnVzRH9CPDnutSd1/7YeaWtY7kyXlfd2yKGzBw==
X-Received: by 2002:aed:3467:: with SMTP id w94mr10317771qtd.299.1585745596209;
        Wed, 01 Apr 2020 05:53:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4452:: with SMTP id r79ls1414056qka.3.gmail; Wed, 01 Apr
 2020 05:53:15 -0700 (PDT)
X-Received: by 2002:a37:5f41:: with SMTP id t62mr10058672qkb.410.1585745595807;
        Wed, 01 Apr 2020 05:53:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585745595; cv=none;
        d=google.com; s=arc-20160816;
        b=AnyqJCfmYd+Bk2GQyIJSJ+GT1tiLXQ3pgBjr+QG9NgkjWXO+6awHm9q7WDEaxESI9B
         0vRKGgzyKp6kNAZxPwiWLx8yk40gLfm8LZbRRD0pUvwK3jciQFjalTcajx4F0T4r1+qg
         GgqSNaBQOLkVQZrqYDpFEsrLoSJNXw98D3pRqKugHYLtUIWQ3awatJALJTWq04LJRJzY
         MUlM8QroFpBNS3BOWFsUwIE10LnvI2wLFZe0Kin5pCs7RH3StcnY2wBiInzL1B6WukgH
         OhvDfZ8kDjeMmATS0PJJiYqJvKy+06O3LxXfo4L/zh4F0YmCXxzLSDAyoula4+Ap5k9g
         oNZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=8vur15tfkx0REq4m8zHW/KqCCBdjAQnnQUNkjvjVVOE=;
        b=aSZYYGL87C8HN0wTLwWNbJUsPOvtmLuf/tYn0YS7Dt/sBVvENKzAoJjFWEVZNHnpD4
         skOtkt9/yvpfCVC2UODW+v4bdYIdtHr5Skst+gkCG1aJmHdaUGRvYPHVbImJtgrxQ1i/
         HrUozfz/vBIuxtRgPzV+0655dQ8lwxtHsW3T4Zof0e9UiHvliljCxeWzTWatFGaAAp5z
         c2TituL6bpHlUB6fA6a5lmwF2DM8ZiohS7fmZxX0G537m8bK973YRFJyX02U9pspkBEO
         rWZnkFg5mImJBtBJiu7GYHXztznjO3b2h/aH47msf19D6Inf84WQXG0ZBSw0Hzo4gITG
         OawQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id d193si112983qke.1.2020.04.01.05.53.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 05:53:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 48smMS2jDxz9sT6; Wed,  1 Apr 2020 23:53:07 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: a7032637b54186e5649917679727d7feaec932b1
In-Reply-To: <20190812215052.71840-10-ndesaulniers@google.com>
To: Nick Desaulniers <ndesaulniers@google.com>, akpm@linux-foundation.org
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>, Paul Mackerras <paulus@samba.org>, Rob Herring <robh@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, clang-built-linux@googlegroups.com, yhs@fb.com, jpoimboe@redhat.com, sedat.dilek@gmail.com, Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>, Geoff Levand <geoff@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, miguel.ojeda.sandonis@gmail.com, netdev@vger.kernel.org, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, Martin KaFai Lau <kafai@fb.com>
Subject: Re: [PATCH 10/16] powerpc: prefer __section and __printf from compiler_attributes.h
Message-Id: <48smMS2jDxz9sT6@ozlabs.org>
Date: Wed,  1 Apr 2020 23:53:07 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 2019-08-12 at 21:50:43 UTC, Nick Desaulniers wrote:
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/a7032637b54186e5649917679727d7feaec932b1

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/48smMS2jDxz9sT6%40ozlabs.org.
