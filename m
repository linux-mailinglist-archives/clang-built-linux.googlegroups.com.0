Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNO2WDZAKGQEJLYA2DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 03593162E8D
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 19:30:15 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id w4sf10507279ybm.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 10:30:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582050613; cv=pass;
        d=google.com; s=arc-20160816;
        b=yOPMLBWB5+sfjgRmi6t/Hq3CYLwX2w7uawSxSr8KWnYmzmmdZVMBfw60DLrXto6iew
         3dYk1EOJspFByo7xAGqNs+yGoUiJfaoSxsPQLbg3d8cs8fWr2scdTPiifdVq4WQtNBjw
         BQuVKHOYXZ7nw2iXsDrO+JzOuk6i+roNfjrh5rSDL27mwPlLDl4H+iB6uA6C3rYxmRyL
         NUIR08/LuHdXGlp1mq4apzegjYT0AF4WEAlu5yCL9vaaXj/SzDjWpPhY5oDfv2O9VkQV
         uUjaXG7lTFRdEuRMUViNhAGFHITCGfD/lHQJuR06TRXSN6JgLTA5NaIoYOjiFTlX7pVK
         IhXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=D6unRjoELBB560ItUbilgot+Azviqy95oXPQMpJL8DY=;
        b=rJltnmw3c5B1hZGR6kBpsibd+E8ZGjnn2iIKiAqVcWx/00Qm2T7+6spe9jvDdLDxy3
         ydXTlyOg85pfH1hZPVEsb+3wXVk64O4Lk/5mNlEuKTdNbGXzts/n1doOG3y6spFyEhln
         oHQ6/T/1L2P4QaNclXIUskc8EuFMFq4EN43AZFnjbjeLyswV+xzSsSUYWKz8Q2q3b2MN
         6e5PFQnKDIJPyjfN26k/iDsWS+pnZgm0H12m3jB5uHY7GONx0cR3+aX9OYQK1nHVmy4y
         RYjsJ9mX3+io7GrxiCm1BzpKRc4NkPu/9HwsN0sbYhTOBk9bBrHsCZxxmVhHMq7/78FT
         rg4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AL2OqpCv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D6unRjoELBB560ItUbilgot+Azviqy95oXPQMpJL8DY=;
        b=Yd0qgqBA/345oWoKw/1K1efRS+AoB/RslnjG1HBzB7q2d8Obug4C93M8sH+aamJ9jC
         WskqP3ydkHAUJobxqkSMc5I7FNH40Je14x7tkMzXzE14vSvCGMISSD5zj/jL8++euFK0
         JiQTgNyS3T5x4TMbiPmHA8WCDSWMFEXy4OX1iO/Re2FV2ZHRgozXpW/DglJmGKvfF/mP
         vCjrpACwmk1MpxybJ1DdiEsmCuLiXsJUEKIPXPC6owRsLMrsh09cucu11o3L7P191Ro3
         eCjCvybJDS73x2DJ22wPe3KJdaiRR3BrUvkecF0ifwJmOYp7B3XrKJ7x6KqdNGbjsqIN
         wpSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D6unRjoELBB560ItUbilgot+Azviqy95oXPQMpJL8DY=;
        b=jTbw725XIlPNMtuzahjgru2ITACCzJTCBFQ3NY8q7ajpd9ApFdoGn2hC05UsHyA1OR
         hmrfe4AJi7WdBGdxI49C/Teg2Gk1LT1/Hiaiyl8VVICvipueeHqACiSvGIO9jf/lNZ6D
         0tE6XV/+r+ukOKE4E5BAYGsTcp9I1pyQ4O8inZKQvoaJmI8MjvusxyLcx5r15rDiNxVV
         UqScGrc/A7s8cSEdKdTcDu2zHHcf2nNXFf3qTdBkQtoy7SZIoXnDjLMr94FRAhgQZIpY
         m9IGhLClH2kvUFe0T4lr5vHJ66t/eM+/pWvgRhaowMvO/Skf0+ZDqTryMvsqTZTnPXZP
         x6vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D6unRjoELBB560ItUbilgot+Azviqy95oXPQMpJL8DY=;
        b=CYB8CKB+fTZIUKeVresx09mgGNAsmgmSJSm71kJ9BB7/L/RZvwQ4BQQrSz9+usU0j8
         5rsFS/lRNDWNFGaAhRfyqCk1UodjGweoZ+h0xsyVuZAwSBLKN1Z8yXJrtm6IlRGc97b6
         IxyryhLB0N4G7zgVUgDAwC36aN0a8fCbbtoMIW10x8aaYuLd1Qbjv0ATYt/CWFoY34Iz
         n5JoQyszh36wt5VukbUnAJYqD3O5rPL4DPy84AQfzojLYKLcVYXNRpv05NiST+xxP4GY
         DPdyRS92RY3LaVl6vAflrHRq/8r35ojX6pDs9x9Cgbx7syuTaDUnMLSBGbuRz7dlibjh
         D+Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW2M8R5Cfx1VmqdptoIKR6w4BRrUdt84PSn9uD576LqfPPPmicg
	GRay0sTEC5ee1bACusrKNNs=
X-Google-Smtp-Source: APXvYqxmnY/mQoQrQ45SEwtwmU9Dv7YWgHbuWE00yiH/x8opF7SfKnxs/HUc8vND04mMjUbxHepGFQ==
X-Received: by 2002:a25:ad8a:: with SMTP id z10mr21550228ybi.277.1582050613789;
        Tue, 18 Feb 2020 10:30:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa4e:: with SMTP id s72ls3395144ybi.3.gmail; Tue, 18 Feb
 2020 10:30:13 -0800 (PST)
X-Received: by 2002:a25:3b13:: with SMTP id i19mr19583047yba.9.1582050613416;
        Tue, 18 Feb 2020 10:30:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582050613; cv=none;
        d=google.com; s=arc-20160816;
        b=MqtQsdPeoa3sgqSCYDI50Y0hAvflKIv1fTIYNtjUv0n2EijPc1NfcxtuxAQfj2YopF
         hpJcMTHovlandjEeOZwyFpcFTXKMMjwfVn490KywF97ljiYa7lWZpjsfgKi3XYKu0IcS
         Gj9naQq/vqi+Vz2/tlp8tZAtndm9tBCajsXdoE1fw75REhmYHBDmL5Gsa+II22Vkbebu
         kY/EqIf4DzU9SoE3/AtLg7C6TtbsmCku4MWy+JFGpelZ4GUKR+Gi0Da4oXcFPyGKAklN
         dOwirmbKbgArZNa/xzZb3bnbwYyKoyhDstTzcnWjuVvQnxY7ks+0qKWAx+k4sH/+aQu3
         xsig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+wiw5lrCSQij+T7Z3oal8MXvOgfhByiSsTRsFyzWrro=;
        b=lE9uZ0WKHzi692lIIyTsN9wCnvRK7eljW0JF9xQpJen2+CXfyYAoykINyENTBXA3+L
         XTC1s1JZxXHrPxJ1sKWl8OYLqZPjPub6geW986kQ1G3XqT1go0/5Kp2rjStXWA8dWXzL
         /eZX8BElXQXSlrmrNpIqI9eTqAJZOu8d6wa3VZu9rWtmyCpUhE0iMefPHpbwk+odWK+m
         ZUrxjDIloJlftwUeGmdomCRtNpNwjJRbSoONCb3RzlJI3SHYlkXNspcarQMNYS88MzWC
         q0Ay/jAtLjsfvS9tTqiMjYPZRUeLKWJzmc7cQis3cCAl/HHnpFOraMZroXsXyVRJGz/6
         YQVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AL2OqpCv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id i200si257016ywa.3.2020.02.18.10.30.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 10:30:13 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id a22so21074064oid.13
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 10:30:13 -0800 (PST)
X-Received: by 2002:aca:2b04:: with SMTP id i4mr2129858oik.21.1582050612821;
        Tue, 18 Feb 2020 10:30:12 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l207sm1435015oih.25.2020.02.18.10.30.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 18 Feb 2020 10:30:12 -0800 (PST)
Date: Tue, 18 Feb 2020 11:30:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
Message-ID: <20200218183011.GA7516@ubuntu-m2-xlarge-x86>
References: <20200217211149.44132-1-natechancellor@gmail.com>
 <CAKwvOdnRbMrXNSMAA20UnoAUKBu5X7JO+DvNTb9pebuzQbRVcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnRbMrXNSMAA20UnoAUKBu5X7JO+DvNTb9pebuzQbRVcw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AL2OqpCv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 18, 2020 at 10:28:15AM -0800, Nick Desaulniers wrote:
> On Mon, Feb 17, 2020 at 1:11 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang does not support this option and errors out:
> >
> > clang-11: error: unknown argument: '-mexplicit-relocs'
> >
> > Clang does not appear to need this flag like GCC does because the jalr
> > check that was added in commit 976c23af3ee5 ("mips: vdso: add build
> > time check that no 'jalr t9' calls left") passes just fine with
> >
> > $ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/
> >
> > even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
> > vdso code").
> >
> > -mrelax-pic-calls has been supported since clang 9, which is the
> > earliest version that could build a working MIPS kernel, and it is the
> > default for clang so just leave it be.
> >
> > Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/890
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks for the patch, and detailed context.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> With this patch applied:
> $ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu-
> malta_defconfig arch/mips/vdso/
> $ lvm-objdump --disassemble arch/mips/vdso/vdso.so.dbg.raw | egrep -h "jarl.*t9"
> $ llvm-objdump --disassemble arch/mips/vdso/vdso.so.dbg.raw | grep jarl
> So jarl instructions aren't emitted.
> 
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thank you for double checking and the review!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200218183011.GA7516%40ubuntu-m2-xlarge-x86.
