Return-Path: <clang-built-linux+bncBDWIJUMT74BRBPEC272AKGQE7QVES2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E61D1A7EF5
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 15:57:18 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id t17sf1541972plo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 06:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586872637; cv=pass;
        d=google.com; s=arc-20160816;
        b=N2puVT6fo5HEe9qZu5Bgnk5RBJawjJbtjlMwV9pnyasxOad9ACnnIEGs8MSikQ5dzR
         AaItnwo5+3UIi+VJOC307Dov0gN/LmtqEyIZWPi2YPEWgedBgW5wTLw0P4EM3SVOEL1l
         KVeZ6blDn/KI6Vc/Kp2jZRVvd/B4jgWHE1rMm3xI8qOP99/BFTV/cL6R56NaQUx5+V2A
         iO8hNb9j7eMOfVuPWT1OjRaFpvQzi3l4xV5aCVSvw1bKjK+NkUjRhYoEnSY1k/cr1i59
         QoGyYwib6WDJKUcMu/TeQa1SMGo+bj8kWnol1XklvSdNay1luesjSIZ/WZtYQMRfGk7Y
         c75Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CpQydFNweeTsdrCEzeKjavrcn/p7rXeOKx0y4viq/xo=;
        b=PUYlLXvwXGFiVXNVGdwkA2pe9tnnyMYemMZbNzEVWICWVzQ5uh0/Nz7TRIpocLUT/6
         e6SYkzcDWEMJCyC/47NgAFoZvKM/jWZRRlS7dWJZCYNwswflqHmZ37DZEYzUXxCzNAcq
         FlkhCO8V4u9fgjbuZe1rGxFRyyiLHwkowfs8lk1uDC+R283B6wa8hFDGzscOxCtNunia
         xT3VN5Y60YZqV1aBTlrWqGr78R/jCiv/S1/JORods13UkAIbdsxniAXetNYnWwhCZFx8
         Zov7vq2a/25TsmILzV9frewcsM7Yeh7muotNybp4/8N6WHQPK6yewz9jU4m3CVR3URe6
         i+Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="b/kuN0mM";
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CpQydFNweeTsdrCEzeKjavrcn/p7rXeOKx0y4viq/xo=;
        b=DDDCw6QniQnZDA5rQNBUKYeFJbgHqWzfQ4cOPGuD5hJb9VrNIVbliKAIXRVGEGSp64
         soCClSg/qiZFfCkvY1ddRpnuEex3GqgUHKzYR2fNREJpcnjcpk9VIijtXxM7+B59syiD
         jeUdTzC97lKz7aP9VgEWRwNbN5HfcmB4/ATDsWkIGmIE2kWTeJMtQ+RcPjsn+eU0viA1
         fJEzKww/Yz7ZA4yDaxPHGTRKGb1UhFvwLBbDOG2w6RNAAjRPSJ14fAac/I+uZjH+FevS
         TneAPmLt6izOowBa2SyBYfrEbGN/oi0TiCxdFc2juzGqnPpN+5KSv3Tq2acFghz8+u0k
         J2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CpQydFNweeTsdrCEzeKjavrcn/p7rXeOKx0y4viq/xo=;
        b=KBEMcF0+UUYd1BiyJ/nyC8XyQ+y76Eu9A9mlKG6hc+pf9dGSyEl8q7DfwnbXA38K9J
         cmgluqGvI098SLXGVpzHgplb9kkVhCeShi3zlkHjwocUBvGUUppIVJCM2HweTS2xOApb
         ditm2T5nZ5jNVeTSZ7nnNSPKFgqWa6IyFNnXHO3dZoXgMv2p0gtSQpDrkoQJ6rPeFhGZ
         u13pQK+dq8cpSWgn6U55iQ+gP26Hzuaxjyu1xQadFpPnVPPexATlnyNKfn49cIk2vahb
         XKAD7+PNfo4QcRhuebCU9Tsn6PrasIJzHG984aadhxhbqnyqzns5pD/PgcfvI1gpSr6T
         13fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubIpMUi8yYjgg5DAGMX4kcEGQahS5+ZOx1t0eZ8OwBQcFxgWmN5
	9WFbOUumpGrRhVqhUxC8T1o=
X-Google-Smtp-Source: APiQypJcKgkwfUGf980jMjueIp7pG7WP/aOPfZ2Gu8DDceta1C7Yg68KJOtyxecZS1btihvMx9h5Vw==
X-Received: by 2002:a63:2c07:: with SMTP id s7mr21442366pgs.230.1586872636811;
        Tue, 14 Apr 2020 06:57:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d34a:: with SMTP id u10ls2744207pgi.8.gmail; Tue, 14 Apr
 2020 06:57:16 -0700 (PDT)
X-Received: by 2002:aa7:8014:: with SMTP id j20mr23605700pfi.37.1586872636416;
        Tue, 14 Apr 2020 06:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586872636; cv=none;
        d=google.com; s=arc-20160816;
        b=mdCYf/55ebyDGjWH4rcVd2oG8JFDU9nle5z9yrEbxcbXxvIgg2cYp6ANrDltc5kKUs
         yUW8e+GlxhLxg+CXNMhV4PHCUde9KV3fmqnFF/+OFEIBgIkKGb+fcQ7i/sxh3j6eQ1ts
         9qGDiazO8ZCrFpsYWrEjpQlf7EMd5aWGYgqoGqE925GBBQdxolI5g/wqQ0q3DOi4w0vB
         5bbA4KjY8paLsdJxLqCyES8qNk9lF8MDcfZ0F53GFDCchQegSSW+iu3m2aENrmOkzB/X
         3e21uFnoArK2sEUFBdPRuJmqoza6vBTEu4C3y+SSu56/Pn77InOVwW9XOUrNZZP+Up20
         R0hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JTYUq5XeraemrvzPdSgrcrVlBO1Pq0nmtXMdmRHEBkw=;
        b=zff7iohQF8AfHKkSwgnrI3jM7HmWiB/xZMH0/TjHTjLYJlzex3yJfjiCyTXdjBuh5M
         FLeKgFX8JvmoafGzrsfBZ/1x/t5R9s+SAkAYr5GU9RlhdyepLRl9dIFJPzbn9bBBacOj
         ELCnXxup+XqJ7nx85cfKveUABbk4UHqTN6hyzjNcntapJziOK0UNhtRUr97RfO6cxaSR
         vpNJKdKfGkzOFGhv0ipw/ZVW6AjieMsZ/TRfyPbXGTvHYc+fIbbRqe8Do0vb8I0b0ll9
         3BKAEPh0wyObAwTpGAGodep21iUKHTJANs2kMT/aICgNp4kn5uyd/wRCySZh8bJ82Cdx
         j9hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="b/kuN0mM";
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si1083230pgi.5.2020.04.14.06.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2020 06:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF22620656;
	Tue, 14 Apr 2020 13:57:15 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why)
	by disco-boy.misterjones.org with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1jOM3u-003AqO-B3; Tue, 14 Apr 2020 14:57:14 +0100
Date: Tue, 14 Apr 2020 14:57:12 +0100
From: Marc Zyngier <maz@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, kvmarm@lists.cs.columbia.edu, LKML
 <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: kvm: Delete duplicated label: in invalid_vector
Message-ID: <20200414145712.603e37d5@why>
In-Reply-To: <CAKwvOdn35v5LkvhWugfLmK_FjVsd0RdPtBCRSqVaM9EP_1KU7w@mail.gmail.com>
References: <20200413231016.250737-1-maskray@google.com>
	<CAKwvOdn35v5LkvhWugfLmK_FjVsd0RdPtBCRSqVaM9EP_1KU7w@mail.gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ndesaulniers@google.com, maskray@google.com, linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="b/kuN0mM";       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Hi Nick,

On Mon, 13 Apr 2020 16:37:10 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Mon, Apr 13, 2020 at 4:10 PM Fangrui Song <maskray@google.com> wrote:
> >
> > SYM_CODE_START defines \label , so it is redundant to define \label again.
> > A redefinition at the same place is accepted by GNU as
> > (https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=159fbb6088f17a341bcaaac960623cab881b4981)
> > but rejected by the clang integrated assembler.
> >
> > Fixes: 617a2f392c92 ("arm64: kvm: Annotate assembly using modern annoations")  
> 
> Thanks for the patch!  I think a more accurate Fixes tag would be:
> Fixes: 2b28162cf65a ("arm64: KVM: HYP mode entry points")

I'm not sure this commit is accurate. At that time, there was no other
declaration for \label and dropping it would simply break compilation.
I believe that Fangrui is correct in his analysis that 617a2f392c92 is
the first broken commit.

> With this patch applied, and your other arm64 integrated assembler
> patch (https://lore.kernel.org/linux-arm-kernel/20200413033811.75074-1-maskray@google.com/T/#u),
> I can now assemble arch/arm64/kvm/.

Progress! ;-)

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/988
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > ---
> >  arch/arm64/kvm/hyp/hyp-entry.S | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> > index c2a13ab3c471..9c5cfb04170e 100644
> > --- a/arch/arm64/kvm/hyp/hyp-entry.S
> > +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> > @@ -198,7 +198,6 @@ SYM_CODE_END(__hyp_panic)
> >  .macro invalid_vector  label, target = __hyp_panic
> >         .align  2
> >  SYM_CODE_START(\label)
> > -\label:
> >         b \target
> >  SYM_CODE_END(\label)
> >  .endm
> > --
> > 2.26.0.110.g2183baf09c-goog
> >  
> 
> 

I'll pick this up as soon as we've sorted the queue with the rest of
the fixes.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414145712.603e37d5%40why.
