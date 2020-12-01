Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRMKTH7AKGQE3D2ALLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 7672E2CA3D6
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 14:29:42 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id n12sf1246909qta.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 05:29:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606829381; cv=pass;
        d=google.com; s=arc-20160816;
        b=gRL+XIVm+hb7r/Luoa7huuLZ6rsMWyOZvSc3I+pUkDVBaDzRoBf0RrkxzIgwiWPUPB
         X7OwENb2GI22msugBEocuOVT1R4MlaCCv166HI9J90a1Uwm+AxvRP4laqugfBe3ZihWy
         MgrL4LD0K5fAHSJBuI8x37tJXfQhRfymh01o7AqAQ8SRzByGjEbl9y1QI/ZxO0CpYFMw
         ZiRE+u++PognoWC91NxzCg0oUpXTZ+eIIGbcAcBlmvoMiNub5Jpkg1ZX9TvknCSZT8eb
         gosNBNwtbqn7PiBXphx5LIdwEN1UnFkr5t1WiM5k9NyZ5kP7qRjdPIeUpjw4RXeNwfYp
         a1Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=zVGTvdFpw1ZrriZo1avqe9/iuWM1RSFRCy5HcmDfXQs=;
        b=k1Dcu8JMXoFHaHhpZ2ZNjJku8U6oSeD56JC2djMDsaE/KdCY7/ViZuM4JtyRGShmoY
         2U2tWLp7w60qumvleo+hTaZVid9e209rs41G8PyT8vhwFdBbZC3IyyNiWsBUorWhIfNN
         PnVADTFoWsFc93TnCtszRbWKLlSyrpGDx5zCLLvJwggq1FcV013aMnu70S1WjMniiMXr
         zmdZz94myg+NHnfFDlIkToXoT8dyVS60u5armjGesqYuO+G4CWR/yOb2AR0XcHNsAJkC
         J3Y9B0QF70yRtMu5msODZbzseJxjHk2lAPutgPr+/ukQ33k6BnV22+jZyDCuK8ncBUt8
         7fVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iWwW+u7A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zVGTvdFpw1ZrriZo1avqe9/iuWM1RSFRCy5HcmDfXQs=;
        b=dVD0CiozSWklrPyLi4GF6tIvyCq7/Ggv5aTkETqYu0tULz2ssTE/qSn9ddLYvKpnRz
         qgtTuoU3NjcpFv1mwwpLe3QLKpmhNulog5lp3WmThKTpG4ZT3WjyqYT0+qRJRtXH+VT5
         l6WBSHjlJoJK0Vu0LeDuvTDhB/HLCPqgTKElqJ2c+DF/P6ptofgFytzmHyAe1yMhi//Y
         kZ7J7GdQ60vwjgQSiPbhq3cZC008MfAgMqO5hbtmKhZNh/mzjND4VJSygtDxcUTa7O17
         HooKPr+3WUWE+hAU855nW9L+abBXjQxI7Ua/rG2581qMPUaNUR+9C24nrosI6VeBKiiT
         Ou/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zVGTvdFpw1ZrriZo1avqe9/iuWM1RSFRCy5HcmDfXQs=;
        b=jFSqYCIOnwwJAfUiT6575RctEGeKv3ZfIP8ct91ISBaoUYK16Bv2tzEPIMVSu79KAq
         CsbKwRqutLHLhP3L3ywUVJWQuzMCyaWaxBb8BSnI89ZnwIFAuh9uOaqfbUGAKGdp3L3I
         qYPxs1VNmJpAgWWoYqNKcACMFANQ5/O/IfSEDE1aB5K3w/lCarciJydBuusXJ5SfdZmA
         g6ADUVciyT9kTARgZ4LZF2t6ce8LV+Gc6NtPUVudPAv5o08b21Ij9XcEM0AowHwGd5N+
         K3oQlwWYgH/2po9Yzyp+gIqlmkTzoy+VMyWqnhmWlx+1d2zelrBjVKbQwfch/bkIbBtg
         bNig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TnTJCfcGNwAu6KY5VGIPFBohXVLIhdKbdqrtY8Vwa4BCe22PR
	9ICd9IrmopAuL+LUO0QPX+Y=
X-Google-Smtp-Source: ABdhPJzCx4WPGd41cyMfg8RPv3n2W3cbUSLakdMv4EsBd4ph3b60Sl3/qbRxy4X+jIdZDjjFpxJe+w==
X-Received: by 2002:a37:dcc3:: with SMTP id v186mr2713824qki.446.1606829381344;
        Tue, 01 Dec 2020 05:29:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:21d1:: with SMTP id m17ls688146qtc.1.gmail; Tue, 01 Dec
 2020 05:29:41 -0800 (PST)
X-Received: by 2002:ac8:7192:: with SMTP id w18mr2797531qto.149.1606829381007;
        Tue, 01 Dec 2020 05:29:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606829381; cv=none;
        d=google.com; s=arc-20160816;
        b=Bt7wSLzsb4JQCnGAzjmKFwZvMCnWo6OdEw/1EOBDynoX7RgxvhuUHJCcsKgIVd52JL
         qL85VGq6ZonLjbKtyWbBcLwCTpKhyzyNLqfiFsRqgnWDx1SsLqZ7Pyy4vkx/Vvbkfv2c
         VmglZdPeafZNC7yhoi6cjMVnyuxchJyy7asOExp0VhwEP4bmVygvfbrdjBc2uRgi6EKd
         97ZEa+AtTDA0oNS39T5sXu5GtW7TslT/Qmtg4j+tlJLkMAt1T6sVVfC3MMleKbRMQpZG
         J9cuwVWyLOLZBsWO7lacXjVtKI7zqjxCSo/fxwwfOqIYNnoL5dTWDJKal2K/FtGi0roq
         zcTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=zMmj+GVqjUXMVH8pNvSfsy5XEgzhkJMYROtJdnMN3pY=;
        b=YFbQlqG4wNqAS72/9G/y/JUBzsCn/idK3LQcMqxCA91A0a2kJ8WLBXN6zLD4uURRqE
         FkD67JHMjfynFK1DvQmc5Ok94NArFMk8xKBXeXwYCnl4akdfeYyDUjsXivU7/HWRHy/K
         caJO0iG/rczY0iemy4mgqzNHasmQlKEPUOrRutdeULPy0h0Hrflz9O2PJmzOFCvOiTKP
         z6D/uGFtZmBb1fjHC/3f7/ji8to4tpaZOOY1MZrGE5+ZbM+kCxi6ak/YMGG44bTLIPlo
         UTLDMQtxGg1/WGEF06ayJbbnULilwqParhqRCJ4ePmcH26aHx3UdXLlwGaRs+ceyco0W
         Izlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iWwW+u7A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id m11si96411qkn.1.2020.12.01.05.29.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 05:29:40 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 0B1DT7ks007727
	for <clang-built-linux@googlegroups.com>; Tue, 1 Dec 2020 22:29:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 0B1DT7ks007727
X-Nifty-SrcIP: [209.85.215.182]
Received: by mail-pg1-f182.google.com with SMTP id w16so1190749pga.9
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 05:29:08 -0800 (PST)
X-Received: by 2002:aa7:9606:0:b029:198:14c4:4f44 with SMTP id
 q6-20020aa796060000b029019814c44f44mr2478107pfg.80.1606829347544; Tue, 01 Dec
 2020 05:29:07 -0800 (PST)
MIME-Version: 1.0
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201119204656.3261686-1-natechancellor@gmail.com> <202011201607.75FA476@keescook>
In-Reply-To: <202011201607.75FA476@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 1 Dec 2020 22:28:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNASmiWkw3+F1_AJWYDAXntcpcNQmdX0d_hVQq7oxQ_m74A@mail.gmail.com>
Message-ID: <CAK7LNASmiWkw3+F1_AJWYDAXntcpcNQmdX0d_hVQq7oxQ_m74A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, X86 ML <x86@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=iWwW+u7A;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Nov 21, 2020 at 9:08 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Nov 19, 2020 at 01:46:56PM -0700, Nathan Chancellor wrote:
> > Currently, '--orphan-handling=warn' is spread out across four different
> > architectures in their respective Makefiles, which makes it a little
> > unruly to deal with in case it needs to be disabled for a specific
> > linker version (in this case, ld.lld 10.0.1).
> >
> > To make it easier to control this, hoist this warning into Kconfig and
> > the main Makefile so that disabling it is simpler, as the warning will
> > only be enabled in a couple places (main Makefile and a couple of
> > compressed boot folders that blow away LDFLAGS_vmlinx) and making it
> > conditional is easier due to Kconfig syntax. One small additional
> > benefit of this is saving a call to ld-option on incremental builds
> > because we will have already evaluated it for CONFIG_LD_ORPHAN_WARN.
> >
> > To keep the list of supported architectures the same, introduce
> > CONFIG_ARCH_WANT_LD_ORPHAN_WARN, which an architecture can select to
> > gain this automatically after all of the sections are specified and size
> > asserted. A special thanks to Kees Cook for the help text on this
> > config.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > Acked-by: Kees Cook <keescook@chromium.org>
> > Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Masahiro, do you want to take these to get them to Linus for v5.10? I
> can send them if you'd prefer.
>



Sorry for the delay.

Applied to linux-kbuild.





> -Kees
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011201607.75FA476%40keescook.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASmiWkw3%2BF1_AJWYDAXntcpcNQmdX0d_hVQq7oxQ_m74A%40mail.gmail.com.
