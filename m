Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBAN7V3WAKGQEPTW32GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AE4BE31B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 19:10:26 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id b64sf1875742ljb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 10:10:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569431425; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLxAOU0EG0PSehkOoxGHCTZJez3634OlUJxbpu39TJHij1SVO7S5b7F3yy2BbpWKYv
         WtYb4Ad18xvOiFwxJq8USVXSgXX1+XZzUIIc5XXLXeKLFIVNskFx2oAwwpPDZDEJMOeS
         GGMa5Al/VzzUhCLXctzwOWmI1rTkQde2d/gghFLuUU3zPgjlEuPfkvHkEXYyn6vyy4q3
         SrYnC20G7zTNXB36xyBEIGc7wxsrF2qSulgpXk8Vc2GUUqhsupG0ppxDO6ZX1Ry90y50
         ms/DFEtRlR33rXdXEUw/v9Qhv/n93ajiRItg9hVpZ1J+o/hPwHHkCb4lbFWBYTPo00D0
         4hsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=826BFH3/fgyK80hIhujIlE7nbIbhh03V2gT9q4Bbg3g=;
        b=qi/U7jdrJQ7pgsbKjrGf1Vxs+sQTLM/thvtEesCtI2MbYoQiwuqAIPO3X3yvABNh6q
         wOgw2KXxnZXcHiQc2OQMAQiiTop6RxOuuFzt6QAKM9fJmRZvY2BhJ0KLT6Fvul+ZUl1D
         7lS0cvNn4gjUTq2rKHIRJNgSHNFWCERRR63+vlOXdEgTLgpbwSYc4BHyTRqUsQTDlMtO
         TZEraolJ9a6/2vZImBHJr0FVnbr3rREPd+wwjgbQSeN/vO7mbV3IX+62CW3c+RPwuZAy
         40H7VKlK0XEU0L8sXDLjor6i0txoW3YI3L8jNNnto/Sidg1+yNnY/acufm15aNA9JG0o
         KSaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ODZq6RdW;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=826BFH3/fgyK80hIhujIlE7nbIbhh03V2gT9q4Bbg3g=;
        b=UpqInMhWVPHafzLENc8/pfnXfPGDQUnn9FfWdY8nzdKplpyWk3kFx7NW/LdFEcUD1A
         z4CF2qm0lBVWfY/MLLllLDBPwQPdJHd4pu+D/OQ3aq0/UHN0hjMiG3Bv2FNM2AiwcGU8
         eQgClsdWOzQBUOOe/Ag/83SfHUawVp/4BVLOYnNgP+tvEelVKMQeT/U8imJKOonTbXmC
         K1FZ9FUmAJXC1tL9evXOgJCw/xjlO8YvzQ1jCA6d6iXG0iw2bpw280z7J/6uspjXy1bk
         MP6D3E7cYRHWQx+PKPAfvMSBjYDy2ClyRTUwq6Xb9yYjZpZMDt40hKWsOld8PlYDJstt
         aoXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=826BFH3/fgyK80hIhujIlE7nbIbhh03V2gT9q4Bbg3g=;
        b=UqWHyM4shP7+oS/W7EZK734FHXCdXGYZev1sjaC6AztNS1wtf7sZ5BQ+74bqRY6VUs
         7XsbF3kx3oedkz2piJJhH3SWkX4IrfD72lTehh1xVyMlqf/zdzkWa+YWRmc+BCG7IM4U
         4lARaIu9HwA1ZGr5HQjKzAhMqjkazpvWkDJaJc9t+TUeCGhs5Y9oEajlwdWwSva3zrvh
         tDIiqQfL0HDd2ciKFxoG6AEeylHnzMMcesnZs9N0Hpvc7J0lZcZxRHJ84odXiadmynlD
         LSnWw72zwuUJhM23kCCuGwiLrIM9McxQ3nsehWLyaybGL0tyuE4OUN5Vf5XlTlstJPtG
         P0Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU+PuIxDgJrXizHakSHJ8Sddd5znRX6GqIwWErEat8HoC0YUgHT
	GrJTtMrykDj4BEuGXc3apGc=
X-Google-Smtp-Source: APXvYqyLhDj42owy9/Bdlkdw5nyjUj+XSHZ8GAPwMqMsM4H3wVxBLzpsl4AfoRO0PowwmaQ6R4yWHw==
X-Received: by 2002:ac2:5586:: with SMTP id v6mr6790992lfg.180.1569431425745;
        Wed, 25 Sep 2019 10:10:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4892:: with SMTP id x18ls745840lfc.11.gmail; Wed, 25 Sep
 2019 10:10:25 -0700 (PDT)
X-Received: by 2002:ac2:53a3:: with SMTP id j3mr6928417lfh.155.1569431425271;
        Wed, 25 Sep 2019 10:10:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569431425; cv=none;
        d=google.com; s=arc-20160816;
        b=E/bh23pv8xofSjkIzXCceu/5RCoJoj81s+VIutPsfOnWQPUHrUChMkM3scZ7gPz3bC
         sLnILT8bz83a9mVrxp2ScC4wHUax5/+H1pqFItumOboje2nm/ehnDsHXiVZpefHNbYKQ
         3APLEjWdQV2gPQooLAc7wPbxtwaO7I5flUer/8bNGmZ1wZmGERBTLrUZBBr8k36ccGvU
         hXOfvNs+BU+nVWuws4GR4INJZRM6hlo+9ehwFFDRwoOPYNveRhyBsmQn/iWm3XZjYqAd
         WMMEF7+iFlg1C8Tw+l2DMhw0QOVN6Rj7+QqLf8JfNRHUQH5afSqPeWQsNuC55qg9Cyfn
         AUXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mla4nxBtIg9/feNWHEP9qZqx4jpzG38YzJe1TshTJgU=;
        b=Dffwv3woyWX2F9xHT6RE6rH1hE5PudO/on2kpIrvScOmV70UZeyCdCYFRcK2hww5Dg
         uJqkMsBE8axpjisUXLct8aXSrgZp18KRT0EH4Jx56rr8q1D3Xb9v30Pfpz11CE5nZ/p3
         LB7eo50NP3UOxEhKZc3ZtanngZIFPWJmpjF2RXTnXTRXsJdI/FHhIvb3NQplQROOS8fK
         WF+WJzVppq8zoa7TaXBeB/qIEB89pvJL2BpHzbxGMZ55u1/j35j+YkRCOGlRXTwKtaM9
         Yzv/an5OaXit2c9aNFKSpyHXxJ5H1L27Wzpa2MWmwgZPxbERjW/MzmZgVPqrIaffnsj0
         X6Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ODZq6RdW;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id c8si399789lfm.4.2019.09.25.10.10.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2019 10:10:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0BA100707709EB32B84CF4.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:a100:7077:9eb:32b8:4cf4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 342BB1EC0A91;
	Wed, 25 Sep 2019 19:10:24 +0200 (CEST)
Date: Wed, 25 Sep 2019 19:10:25 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>,
	Jarkko Sakkinen <jarkko.sakkinen@intel.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Tri Vo <trong@android.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Rob Herring <robh@kernel.org>,
	George Rimar <grimar@accesssoftek.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Fangrui Song <maskray@google.com>,
	Peter Smith <Peter.Smith@arm.com>, Rui Ueyama <ruiu@google.com>
Subject: Re: [PATCH v2] x86, realmode: explicitly set entry via command line
Message-ID: <20190925171025.GF3891@zn.tnic>
References: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
 <20190924193310.132104-1-ndesaulniers@google.com>
 <20190925102041.GB3891@zn.tnic>
 <CAKwvOdneE7kMupFzxZC-6c=ps_98FP+Nz88fCXQ74z90hmaaXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdneE7kMupFzxZC-6c=ps_98FP+Nz88fCXQ74z90hmaaXQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=ODZq6RdW;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Sep 25, 2019 at 09:35:24AM -0700, Nick Desaulniers wrote:
> Thanks for the consideration Boris.  So IIUC if the preceding sections
> are larger than 0x1000 altogether, setting the entry there will be
> wrong?

Well, I spent some time this morning grepping to find out whether PA
0x1000 was magical but didn't find anything. Perhaps hpa can refresh my
memory...

> Currently, .text looks like it's currently at 0x1000 for a defconfig,
> and I assume that could move in the case I stated above?

Yes, I think we shouldn't hardcode.

> $ readelf -S arch/x86/realmode/rm/realmode.elf | grep text
>   [ 3] .text             PROGBITS        00001000 201000 000f51 00  AX
>  0   0 4096
> ...
> 
> In that case, it seems that maybe I should set the ENTRY in the linker
> script as:
> diff --git a/arch/x86/realmode/rm/realmode.lds.S
> b/arch/x86/realmode/rm/realmode.lds.S
> index 3bb980800c58..64d135d1ee63 100644
> --- a/arch/x86/realmode/rm/realmode.lds.S
> +++ b/arch/x86/realmode/rm/realmode.lds.S
> @@ -11,6 +11,7 @@
> 
>  OUTPUT_FORMAT("elf32-i386")
>  OUTPUT_ARCH(i386)
> +ENTRY(pa_text_start)

Well, looking at arch/x86/boot/setup.ld, it does do:

ENTRY(_start)

for the global _start symbol in .../boot/header.S.

So you doing the respective thing in that linker script would make
sense...

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190925171025.GF3891%40zn.tnic.
