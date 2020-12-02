Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNP4TP7AKGQEXE2CPNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C07062CB2D9
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 03:38:46 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id m186sf130432ybm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 18:38:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606876725; cv=pass;
        d=google.com; s=arc-20160816;
        b=pc0/VhWnkSk5fmCPdwahSyw9OP6hWJrwUFmK3lq8T2UeEMAbc30q/Hca+xDIGEWaez
         KprcEi0qBYOc64BGmhTnyfQYXUcQwSkc2GMp0sV7F3Zpsrx0HL72i/Ypc7j2d/0MEVDY
         njWz8Dx21F7VLxYilYOCOnMA52IlCMuGs+nBt/VHmYO1Wmqu5RuOzCMNpedP9+IHejit
         u7c4HUZebO0ry9Fy/YoOQpbK/MqiXtaFWR4jt1JdlwpGpkjoaGvB4dcRbUphiosjfIVW
         KrqF0YcA2XnyjzY4FBfZy85TSq2vUgGz5AvcbXIIhWD0woDfhAnalrUA+OEUKiDFj90N
         fMHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=90n6D8TIwRDMVlrV4YxRmCkp1jWITCDKT/PymMhKnGY=;
        b=P+xdD8/N+HBTt/5NxpSd7pkFoRY31LlQgPJJwrgsGs6oBTC9KElknnOaDEzSS4ny0P
         eaOdMrt0FPYwrCynkb41GRP/gTkgGrq+uEUdgvu+bBPyVbKkQYHTyD8UbWlCOVTvvwE3
         VBjKIk8UMFjgPD/XJg8gs7zG/Tsrys8ir/VdLbtokWFF2RxUBn7O2IzE5owe+IJvMWtd
         5F/s8hYUARneFA+Ed4++bsMGYxd8N4AiIC0V/AtNNpLilEad1vFCRb37ZhizU+yLST+p
         bnDGKaJsws3Z6LHQ33k7EI+HhOC5qkCShso0AJ6yXSO+IZTFowYRzmaEp8Cr3D2AaHYZ
         OWsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tOIszf40;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=90n6D8TIwRDMVlrV4YxRmCkp1jWITCDKT/PymMhKnGY=;
        b=EaJLTQfFalwDN3y8IRhhm4YCxvivMMQvGlLZBJ/7/LOIwIFLchhcOiS71kKc+Zqxck
         R9JhDZrtA3IC8Vf8TCp1npu3gW558U0MZzSKmpT9Q4wJhH5no2/QxNnEpx09Ec76zm26
         xJBMvNw57g5G4XU8PP1q7GffprjowGFmlgClxxgMUi+vJDBg3fIwQEuHinRpskUWyZ7w
         I+NU/fyXKX+KGrj84sZ4GGtjZzUeA9L19e85bs7neynyTSMEWkURpncL8AxgpBt/LMl/
         JSuXE4+NTQehUmd3e8DpBGNggCyqjWqIa9i6iU62JNUYfxbN4xdM3NlNmiVIsFMcj3d0
         lEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=90n6D8TIwRDMVlrV4YxRmCkp1jWITCDKT/PymMhKnGY=;
        b=tDqx4UD7aFt/C5p9GT07JaTYW8VJrY5s3ONuhp0eraF8foXLVfcAVC+QhuMIVSn46Q
         HPVTLPWdh1INnnb/6mgUUBm0oUhl0Ys06ilr/XYJoil+4NcFvM54nc8dEMAXT4KFohKT
         CNPQ3zR+rA2fvZf3gcr7VJmD5L5X1yvuMCFwZjExxdKY/gbBKH/J16VOnHYWyTfN6F4x
         E4RbDzt8LCSDcvMtNp0FQxPRUzAUqeP12ui2DlbUdyt4Z002Mp+BSAQAOv7GHPGzS5kr
         Pcm5LqRSRntIZx1aLKh+hs8gz0+8I1SPFh6cs1/Ka9n6iLJrLe8Z98yL+Cu37ylYv6CP
         VaJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kfIBW7ERscPnE2dSJKsmDn/Vk45tyuSWGHy02tQZN7H0Meh9U
	3scGYnfNTm1yNTpbXvRLbxQ=
X-Google-Smtp-Source: ABdhPJweBltzQICnmJ24gWtf81Ba2BcdvSCYOPeFMq/tI7mNrrgDC7Xj+uRVpNYttzwkuD4IgPY27g==
X-Received: by 2002:a25:7608:: with SMTP id r8mr669091ybc.131.1606876725653;
        Tue, 01 Dec 2020 18:38:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c553:: with SMTP id v80ls190840ybe.2.gmail; Tue, 01 Dec
 2020 18:38:45 -0800 (PST)
X-Received: by 2002:a25:ce8e:: with SMTP id x136mr735014ybe.488.1606876725248;
        Tue, 01 Dec 2020 18:38:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606876725; cv=none;
        d=google.com; s=arc-20160816;
        b=GSkXV2ObKH7QAPWKzy9WBdy0lCO+SbmQcsglT+pd2A3A2qO1Aa2GJk//kyJG7nNKGO
         ZY4FMIjLCsQb+sLZ3hAfl/f6I7XlQIXHWyTm3khnqc6Rh6CaW+SFKuXI2P8jbclBnY6R
         ZGpnuYsyD45gx3dDYZEWk2wjHm0quoEHMo9KBn55qSb+sVP7MmL9jabucJiEqNwnppa8
         +6ByfRdXjW8v0xm+1nnlvlhhFREKdhqO41rvyRBibLGjSgsQxSgrsQggx9aWtAf040jZ
         Q4lTm5YaoftNJvgj0YxKxfbCaQG/ilJoILJaL3g/SgYJVHYI0s3n+B8mJW+EwrrdCWJ5
         7Dsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=vuUMWsxXWrQ01Gfrdczxg27I9JGZI9RgaFpbn6oV8oY=;
        b=qRRMiAWRRDSPM4aYvoi6uecnQHhN/vVSMiB6JbGqLuYmWlYXGkEG0SpHdMw/9BWwU+
         GxsSumxSbLnZJwdo9sDQAhdq2Wo+ckaRxSCD+lMBICzs+vPaM/rhMyu5jqOsrYeBjEsS
         X9ciFT7bewcQGE8wEBgLZSeYVy0ujSBbNA9w5K2le8SVVt64ju4ku6KmOrvfMpOwvArJ
         lNbC+O9MjTDx7UsCTZgR7g27+xNZitbFoi2eH44EdlIyOK1HeVuB7GwO+f9AGFRQHerw
         DymZwQU2WnDrD15HikX5s1TH68Cl6kD4KJZ30qeihSgqgXLETwlqdjb9mZC/92BF29uS
         xxCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tOIszf40;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id n185si15862yba.3.2020.12.01.18.38.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 18:38:45 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 0B22cGts017574
	for <clang-built-linux@googlegroups.com>; Wed, 2 Dec 2020 11:38:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0B22cGts017574
X-Nifty-SrcIP: [209.85.216.52]
Received: by mail-pj1-f52.google.com with SMTP id hk16so125835pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 18:38:16 -0800 (PST)
X-Received: by 2002:a17:90a:fa0c:: with SMTP id cm12mr195096pjb.87.1606876696170;
 Tue, 01 Dec 2020 18:38:16 -0800 (PST)
MIME-Version: 1.0
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201119204656.3261686-2-natechancellor@gmail.com> <CAKwvOdkPgwL8H4EGF6=-VuxTdmxA8JHhGbLHVYcLJj9MmAvW=g@mail.gmail.com>
 <202011241421.A2F3062A70@keescook> <CAK7LNAR=_+1K7EtpvGzgyM+ans-iNOT0PBXdLRApnsyAzakQ3w@mail.gmail.com>
 <202012011255.9D677ED3@keescook>
In-Reply-To: <202012011255.9D677ED3@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 2 Dec 2020 11:37:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQGqcCBBFbKwe_eTuBqtNwDn_q8c0nPBJVsEoHP6F+aKA@mail.gmail.com>
Message-ID: <CAK7LNAQGqcCBBFbKwe_eTuBqtNwDn_q8c0nPBJVsEoHP6F+aKA@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=tOIszf40;       spf=softfail
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

On Wed, Dec 2, 2020 at 5:56 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Dec 01, 2020 at 10:31:37PM +0900, Masahiro Yamada wrote:
> > On Wed, Nov 25, 2020 at 7:22 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Thu, Nov 19, 2020 at 01:13:27PM -0800, Nick Desaulniers wrote:
> > > > On Thu, Nov 19, 2020 at 12:57 PM Nathan Chancellor
> > > > <natechancellor@gmail.com> wrote:
> > > > >
> > > > > ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> > > > > along with a few others. Newer versions of ld.lld do not have these
> > > > > warnings. As a result, do not add '--orphan-handling=warn' to
> > > > > LDFLAGS_vmlinux if ld.lld's version is not new enough.
> > > > >
> > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> > > > > Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > > Reported-by: kernelci.org bot <bot@kernelci.org>
> > > > > Reported-by: Mark Brown <broonie@kernel.org>
> > > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > >
> > > > Thanks for the additions in v2.
> > > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > I'm going to carry this for a few days in -next, and if no one screams,
> > > ask Linus to pull it for v5.10-rc6.
> > >
> > > Thanks!
> > >
> > > --
> > > Kees Cook
> >
> >
> > Sorry for the delay.
> > Applied to linux-kbuild.
>
> Great, thanks!
>
> > But, I already see this in linux-next.
> > Please let me know if I should drop it from my tree.
>
> My intention was to get this to Linus this week. Do you want to do that
> yourself, or Ack the patches in my tree and I'll send it?
>
> -Kees
>
> --
> Kees Cook


I will send a kbuild pull request myself this week.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQGqcCBBFbKwe_eTuBqtNwDn_q8c0nPBJVsEoHP6F%2BaKA%40mail.gmail.com.
