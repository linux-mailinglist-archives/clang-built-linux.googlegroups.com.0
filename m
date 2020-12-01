Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB5ULTH7AKGQEK7YTWUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1540A2CA3E6
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 14:32:40 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id b4sf1184551plk.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 05:32:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606829558; cv=pass;
        d=google.com; s=arc-20160816;
        b=WWFFY4i09zg2k8XCW5G4z73kW5WIJTs5lKHbuSecBciKPzqkCdivxIJanHKaCz9sYp
         Bs6CMrGrkacrhiQCop6/Vwnlo+Oz071BpCoqoky9JVwEeEBxrdarb0f57uMqjZJSNKs7
         NEal1FJV3L3EVcrKtHNRjrzNUl5Qh8xaoShrdYtygqkDaE8XVmOw9JVavoqubbO85fbC
         asfQXr9S0px80p0y5EawPN1c6jIcstRwVl/+gz3RvNSj1bJLp5RkJ8/2cYcrJmx2vMGi
         RygibQpsPAM/lOzbnMGbqnwG06iMY5w32xNszpi1/ANyaFUDnm18cbawZhlMWBnPBcYc
         u/Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=01AUZWC4hzDfjQhdrU11rKQt6Uy4MbEX7wm6xvaWnDs=;
        b=l9WyYbhS9oaemamVFVUhyorZVmcnv3leiekb/r7WWPoUHNsQkn1MJNheOljdLW2aV3
         qs9jy4I9vEkXxMN7fGm3kVST2xazNHxXRiJIdTioN0arVc0c7KHLfAA/y974BtlPId2u
         Qb7c1zGH9tHbiBv7WlZFkgqiymlwHfQU6cBTeCwto2nBn0mZtAKs4Wur46l+JqPCCNBz
         f1FN7to0eyNZ1OEneDj9yUkBVzebfcfqIwnwe/+EYeIzaY1IiOuYG5FWYDSu8+vMw9j9
         TWesjkW4aVT8dnc0MMY9Y3z/eyyEeSlQNpGbHniB5Ewp1jwYlA8zeGr//TtFox0j+OGX
         aIDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=THr+eUx4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=01AUZWC4hzDfjQhdrU11rKQt6Uy4MbEX7wm6xvaWnDs=;
        b=qGgLji8kMkzuaUV9GVTriEkgICAauqae7eAwIcSiuNN4N65DNLNEwRe9Cck/zuv+dB
         o67T5VKE8PmF1CPMTqEvMKtPv8HRBKDvUhLpfZdax9tjT0dLhVYszPTVfGQdyhv9GDj0
         0YMra4AjisFtK2LzEdRVGeQVE3XFWzGLa+cF8zr2whnhtHH1tDkImJ2spbkegUM0+LGv
         1oFJaGCBEr+k5fPVPBpNDpxQSfU+Dd+xfLiRG5YeEqMrF2yguHkYVgQM7sfQJhfknA/Y
         9+oUwG3TJYNTZOGFhL16bU2aTyDBLCHkD5uh1eLYVNE/XSPodrkbDOPMkARr5Bu+vkNE
         lAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01AUZWC4hzDfjQhdrU11rKQt6Uy4MbEX7wm6xvaWnDs=;
        b=BczwwHEw1qQVEsDKmUJMUDp5qJPlDeEAOBXEASzm/4oSvxEdpYjys2d1ILLYwWIjj0
         /rP7nNhiEAhWtwOXNdDlx63nGjBH0TZzk/MRgghbaMITDIUbl777ti9kgU8mzSWGokG4
         CpPJPYcKjFKpteQPDgmGPx06t248WFx5i3xp4S0+IRWeI6N5wMJjCbIeOLe7uWjwJbnK
         KYVCGQbH9ug3p3w9Y5YKrNZyBOmD+1X13SDSVMa8eTh5Nf42Ty75AA5Im1MsuxK8VrTu
         PJaxVM/12x+U6yuC5B0P/bI0YPlja2k8dHZqMVuNtdqPvJIpBCgVkZ1i7eWfcWhR/nKw
         17ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300YsRIXbOfDEyPX57dEmjf6v8bFSZpks1YcWsvUKvaRBQDx1OS
	O7y9v7C3YdpDj0WYuSKkiEU=
X-Google-Smtp-Source: ABdhPJyqRnoB93wGYmgRwu2ZDwmRJkzOsJwPpJxnviYVA8HcXh/9KthCSSbQydYQcqRxlKruZ4W80Q==
X-Received: by 2002:a62:1c93:0:b029:198:1c0a:ea71 with SMTP id c141-20020a621c930000b02901981c0aea71mr2732051pfc.22.1606829558614;
        Tue, 01 Dec 2020 05:32:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7556:: with SMTP id q83ls957691pfc.3.gmail; Tue, 01 Dec
 2020 05:32:38 -0800 (PST)
X-Received: by 2002:aa7:91c7:0:b029:197:e389:fb26 with SMTP id z7-20020aa791c70000b0290197e389fb26mr2589674pfa.20.1606829557947;
        Tue, 01 Dec 2020 05:32:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606829557; cv=none;
        d=google.com; s=arc-20160816;
        b=OvFn7Zvvg7jZmjN3+qlZIrQMWpYnFCB9tSNjRTNGBeSPK/BfUuBPXHitCEPuRNyJ9j
         GlaMQDEaIQOtyLcLlCxB+Wm8s1wr4jzTDAbT8pACuHGTeOoJf/dd4SFfebMJVlz86C3j
         u23Zzr8IlZtW4Yil3GOlCSFJsHpa/OeH2iAT7Ymw6yCZ1PdbDOouA7q9xMHJxSb/qatn
         qvLmRQV9RAQIW8yYD9G7icphe8p5aC3Vd6ir4Mgd4R1DwXe14DLOPPfIRq4yZ+fsqA33
         q6sJXLmRJjqnfyFLBR2BFu1FGcntVfLLTVEptMUoBQWXMjrPkHzkCtNehuZ9y3mRUZps
         Rajg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=BCmIt+mXGDdopPkiBBw+3x1M8rDQB/5oH9HpU4uQ5qA=;
        b=HZ0+w8RBwRrkDBAp0uHUM02KayfSP6Gkl/dAFNdOZYRUFedmXErm6UmBy2BDtUekvo
         3Sv6mGm1pq/eL6slNljO1XjwE+VmhUb2H+VV8frCSbsZ5e3IJs6weQ6YiwHmaxEQtT/a
         nd+EWiWN78m+LjVLHkc+sb80IraAowW1uMERJxUEB1uKU7Onr+YF99ALV+CYSqcygCaF
         /GnnYdKxnG22D5TfN+szo4mG+Sh1lzASqOKmFTl0+T7jwPieGYFdwoqK+qNViurjWLb9
         FQfgS9/EcovJZbU/pwQ2TswqI0YX+KX7fsdMJUpzEyJ+c4ohrVpW59YP+e/+e2z0HsqC
         ZYUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=THr+eUx4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id y13si131366pgr.2.2020.12.01.05.32.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 05:32:37 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 0B1DWGSf011888
	for <clang-built-linux@googlegroups.com>; Tue, 1 Dec 2020 22:32:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0B1DWGSf011888
X-Nifty-SrcIP: [209.85.216.53]
Received: by mail-pj1-f53.google.com with SMTP id l23so1245714pjg.1
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 05:32:16 -0800 (PST)
X-Received: by 2002:a17:902:402:b029:da:2cb9:56e8 with SMTP id
 2-20020a1709020402b02900da2cb956e8mr2703980ple.1.1606829536018; Tue, 01 Dec
 2020 05:32:16 -0800 (PST)
MIME-Version: 1.0
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201119204656.3261686-2-natechancellor@gmail.com> <CAKwvOdkPgwL8H4EGF6=-VuxTdmxA8JHhGbLHVYcLJj9MmAvW=g@mail.gmail.com>
 <202011241421.A2F3062A70@keescook>
In-Reply-To: <202011241421.A2F3062A70@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 1 Dec 2020 22:31:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR=_+1K7EtpvGzgyM+ans-iNOT0PBXdLRApnsyAzakQ3w@mail.gmail.com>
Message-ID: <CAK7LNAR=_+1K7EtpvGzgyM+ans-iNOT0PBXdLRApnsyAzakQ3w@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld 10.0.1
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        LKML <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=THr+eUx4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Nov 25, 2020 at 7:22 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Nov 19, 2020 at 01:13:27PM -0800, Nick Desaulniers wrote:
> > On Thu, Nov 19, 2020 at 12:57 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> > > along with a few others. Newer versions of ld.lld do not have these
> > > warnings. As a result, do not add '--orphan-handling=warn' to
> > > LDFLAGS_vmlinux if ld.lld's version is not new enough.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> > > Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Reported-by: kernelci.org bot <bot@kernelci.org>
> > > Reported-by: Mark Brown <broonie@kernel.org>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > Thanks for the additions in v2.
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> I'm going to carry this for a few days in -next, and if no one screams,
> ask Linus to pull it for v5.10-rc6.
>
> Thanks!
>
> --
> Kees Cook


Sorry for the delay.
Applied to linux-kbuild.

But, I already see this in linux-next.

Please let me know if I should drop it from my tree.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR%3D_%2B1K7EtpvGzgyM%2Bans-iNOT0PBXdLRApnsyAzakQ3w%40mail.gmail.com.
