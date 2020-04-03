Return-Path: <clang-built-linux+bncBAABB5FATP2AKGQE5JLSHLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A1D19CFF3
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 07:58:14 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id l12sf5372393pjh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 22:58:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585893493; cv=pass;
        d=google.com; s=arc-20160816;
        b=meF414FYyWwShWG+HYcdSDZMuPSi22A+0vpoKHjbzrO+MS1G+eYEZ9naRjLMwDLDxw
         qBx5Wk/wXAbq2Kb1RGrYwJhC8uZ9CwE37H1cnQdcabO5QaDL/UBqxPN6AT2rcaPbA1Lg
         wuGAPChB1uOQvoaTC1Mgr4FSLk1P7/22UdLMN/gNhA70CLbs0d0DdK8nJhI0ZAKU+Vt5
         6WdI5x4NXOgXtY5DJvKSHHzZ5T00dKBMCqR5E5WI2GsISwOhfHhjBSHW/1yc9Gz5m/U4
         FNQgQgdKkLqSu6THtPjcXdDMEB4kEozR/Y0KJSx02qCAI+6fmmDrWaBjl/YGdWKre/CM
         FrFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=kpY5rfGUHMT7ONKq726Eu+Q7DlMwrFlffP1Cboi0mrU=;
        b=tVETk+7BzqWBa8WUGx6DRq6/RvJQT8QMmGHkK3oHBgLJiV297Ml7MX4ZPLfbDUm+I0
         uZgJkS6JuFaXSdEeGsoQMxca0+raZC0FdKfrapjcgG75flgTGGsULwnl3nLujvjnrD2W
         CirjNr/eOqg3quJQGVYuhg2Zc9q64Sa7SVcdkpnMmiQVSrA2R8HLzn74/bCaJxditp/z
         u4xGlrdouSJUidWtK99WuAHLx9PaUTZ3toivyekawwJ5dSrDenV4eYPzwaQDVvvDZYiv
         xfoIKQVS5ygb3EKR6imOUobQR1eZmMxTIBO9THrWTrRdBRrEXnM7rMnPFIceYD7vZSeB
         6QFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MiT2I4Gf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kpY5rfGUHMT7ONKq726Eu+Q7DlMwrFlffP1Cboi0mrU=;
        b=ckdMGMZIRYCysunUDbKPDvvFwmEUEireDFsm4GnPupKno9domLlQ3jcUGsIF53U1jt
         ezEw9U8otdGFrzMySkDTtKT37w+aKTqRy4JEjYRuyVtjuQUHY9K6/1LRX8B8nxJ1YwAL
         oPkF4ZBYgP9OymnJNq2Ac+jSFl6PZejdL2ZfSPKTmWxD3MU4tNNPETSlhgi3+xfi//cP
         RC06iAc7TLUA0lj/NlpMZPZXibMBcspwV1MIkPDXdf00TjY1Je/uc4BYX4zmBPxwM/fH
         nWSb2FQRzd48qttkHXyFtkgDX2ZdDDQhjmVoRPo+s+kG8JtA4Q7GK7aVHsCTdG6kh4QR
         7ZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kpY5rfGUHMT7ONKq726Eu+Q7DlMwrFlffP1Cboi0mrU=;
        b=SzW84+Fn3PDFkQOefHu+CRO3jYPMXGSq6CVMvnOtm6z4E5j7zPwTtFnfktOJ6/Hl4c
         5vjcpy8b2x5eHASD1Z3vANC6qQRYlhxh0p5MhYdFqbTWeEWrWVg5vdccUVu40C6c5hpH
         WmpOqD9AaOi87XCHO375PfOQjBNph6YC9OkQ/dGRpY+2LwtuthLxHlY0IIIohC2cuIex
         PdFTXNSXGQ2g13rF2qea/MIvsQ1+sogolwiYefrA8VMzTbtEP7ifr2gR84rjVgO7c/VZ
         f+6Fv2Arks4FIkQcf6DDcCe1JYSdbiUECcqmhkX2BTAAePwNJebfZO5H1de6pBTg2sOl
         7jyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZuUiKIYlO+8XiFhMrsYcIE3k4ECROd/HM0eQcKbjUSnuigeAnk
	2lku7MEEtJ3BC49cxqAW/GU=
X-Google-Smtp-Source: APiQypLzJI/z4Cj+Opw8zQ+dqOW43KsBgVK15C5+EZnbjsWHk+pL4yNuCZ77h7yqXJgb/GIpMhdQcg==
X-Received: by 2002:a17:902:8d89:: with SMTP id v9mr6509224plo.83.1585893492747;
        Thu, 02 Apr 2020 22:58:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a5ca:: with SMTP id t10ls267614plq.3.gmail; Thu, 02
 Apr 2020 22:58:12 -0700 (PDT)
X-Received: by 2002:a17:902:aa48:: with SMTP id c8mr6210764plr.95.1585893492378;
        Thu, 02 Apr 2020 22:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585893492; cv=none;
        d=google.com; s=arc-20160816;
        b=sSTwazAB5OHa4XkHC7/7KnZZlSBImN+Cw6oa3kL8SJJ1gewq5zXxSU1bHh9MkQ2l5d
         rOPbQufCFQRraW0ZMGh+P9hcpHkI1xyceG7Id0Mg3d7QrqeQBtH3OSsUrtJt0V23b6zI
         ba9T2zEjwedfnrbMLMi1JJn1JE/lNpnhe3pz2yoA8cUtKTI+in6zDkKcM0v7AOSVcR4S
         cB9UFUbjnE3qyqGld/hpIV/5AjV9o7l2LKZpBpHz0Fit/CmdoEPEctv6LcsbLMDkSp4C
         JyPFJUfEtgn1mXK/49WAyyZk8rzHYDp0v/lV9G/98gzD9z1m3Ek3n3B8QbuRRD3OYNtt
         OtIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=EauiOmcsg1tATmXp9SYcg/opN412JjjoRaNrMk4wkYs=;
        b=lLVGqVt9RPAJM6tpwoKGLnbppP6WDyIaFOwU8IqLVs3S3OELF+h3EIcYx+aeb21+lv
         QPN1wzDCrQf3r4CotkTPcG3caalkzZjmyTQyeKTRr/5xloFpmgIpaA5X7ivXBqZbBoZX
         lhdDFC3D8lHvUKw+O5Rsh8xC47A6s7QZJXGmRc90qwqIiRHuwHFiIQpLxwMj5MYWyavw
         0YQTQnzzC6TTgUHyG+v97aSL1naognvYCkI3QXT5PAiHvWOezRoGObnfCdFIu5b9sOYa
         wEzqMEQ5fbNTVZWJh7RFMx/nS8GDluJtKyM/9KPg9GR5XCzhuplMg3Q4AEhDC29UhSCA
         o4gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MiT2I4Gf;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id x12si398199plv.3.2020.04.02.22.58.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 22:58:12 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0335vvLG018345
	for <clang-built-linux@googlegroups.com>; Fri, 3 Apr 2020 14:57:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0335vvLG018345
X-Nifty-SrcIP: [209.85.221.170]
Received: by mail-vk1-f170.google.com with SMTP id v129so1697753vkf.10
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 22:57:57 -0700 (PDT)
X-Received: by 2002:a1f:3649:: with SMTP id d70mr4923181vka.12.1585893476720;
 Thu, 02 Apr 2020 22:57:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200220110807.32534-1-masahiroy@kernel.org> <CAK7LNARHBfp=gkVO9q3pC9o_w9PgNW=5AP95s1MR1tHLJV=0fg@mail.gmail.com>
In-Reply-To: <CAK7LNARHBfp=gkVO9q3pC9o_w9PgNW=5AP95s1MR1tHLJV=0fg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 3 Apr 2020 14:57:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQuOF-DcA7v3Uy-7hdVeT5hDuatGg6FY9TgG10T3OBr0w@mail.gmail.com>
Message-ID: <CAK7LNAQuOF-DcA7v3Uy-7hdVeT5hDuatGg6FY9TgG10T3OBr0w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] sparc,x86: vdso: remove meaningless undefining CONFIG_OPTIMIZE_INLINING
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>, X86 ML <x86@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        sparclinux <sparclinux@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>,
        "David S. Miller" <davem@davemloft.net>,
        "H. Peter Anvin" <hpa@zytor.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=MiT2I4Gf;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 19, 2020 at 4:20 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Andrew,
>
> Ping.
> Could you pick up this series?
>
>
> Thanks.
>
>
> On Thu, Feb 20, 2020 at 8:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > The code, #undef CONFIG_OPTIMIZE_INLINING, is not working as expected
> > because <linux/compiler_types.h> is parsed before vclock_gettime.c
> > since 28128c61e08e ("kconfig.h: Include compiler types to avoid missed
> > struct attributes").
> >
> > Since then, <linux/compiler_types.h> is included really early by
> > using the '-include' option. So, you cannot negate the decision of
> > <linux/compiler_types.h> in this way.
> >
> > You can confirm it by checking the pre-processed code, like this:
> >
> >   $ make arch/x86/entry/vdso/vdso32/vclock_gettime.i
> >
> > There is no difference with/without CONFIG_CC_OPTIMIZE_FOR_SIZE.
> >
> > It is about two years since 28128c61e08e. Nobody has reported a
> > problem (or, nobody has even noticed the fact that this code is not
> > working).
> >
> > It is ugly and unreliable to attempt to undefine a CONFIG option from
> > C files, and anyway the inlining heuristic is up to the compiler.
> >
> > Just remove the broken code.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>



I think adding the patch author to Cc:
is strange.



The footer of 6290b47e9aa282c11f38390931b06402c553dbc4
looks like this.


    Link: http://lkml.kernel.org/r/20200220110807.32534-1-masahiroy@kernel.org
    Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
    Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
    Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
    Cc: Arnd Bergmann <arnd@arndb.de>
    Cc: Ingo Molnar <mingo@redhat.com>
    Cc: Thomas Gleixner <tglx@linutronix.de>
    Cc: Masahiro Yamada <masahiroy@kernel.org>
    Cc: Borislav Petkov <bp@alien8.de>
    Cc: "H. Peter Anvin" <hpa@zytor.com>
    Cc: David Miller <davem@davemloft.net>
    Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>



"Cc: Masahiro Yamada <masahiroy@kernel.org>"
is unneeded since I am the author.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQuOF-DcA7v3Uy-7hdVeT5hDuatGg6FY9TgG10T3OBr0w%40mail.gmail.com.
