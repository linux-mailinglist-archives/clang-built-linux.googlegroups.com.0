Return-Path: <clang-built-linux+bncBAABBWGP5PZQKGQEE6C4KMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F50192058
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 06:10:50 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id h125sf1199388pfg.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 22:10:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585113048; cv=pass;
        d=google.com; s=arc-20160816;
        b=t4SFOHuTX4wfWnLLdq8PC6u0sBtYzeJV5yfhdOyTLtO0WlS1LfNfd4t0hAn9d1LB2m
         GLLHRynwF7QTSQDOImqMxIGEC81fIj3tH6rw+VAVMtpSYDbl0IU+u4ZCxI3ejkhCut+3
         klRRP2j0IHRne4SB6PJgX/gyQ9V812Hu1FGin0OEEcdHI66kP80otjZ9sPsLXEJVwzKd
         SB+RzOB0BlPeVwrUxIjrW+ZZoUFCGnI219+fQacSOn+HCknK2eWKYpl3SEVP1ghoVINY
         /rwYa0bmdXqwN6TH4OdIL6BP0hSAq0Mg8zsQVTXXZbNX5JoMYCC+QUa9EmbyyQjduit+
         7UyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=F3nmVTbCIgFvsU3MlHPSyqaLdPWRtRMaCI6KfLqhYEU=;
        b=gqOvT3EGSFspocp4qmGNjBst+cwBt/MbafIzu20WDOY8LS1nDWR/G36Ir8ZilN5h1k
         b82l16dNV0EicjjV1yzQGAuTlOXSsMyUt8SmRn7Z0UVCkk2QThSPwGM8QEjmAp5N0AE5
         PhsRnybwqbImVMyVyuL0EDxeO+3L0E6E0bC/696+JBoV9T8Zc3d6MD5dyrRmDQu43Njn
         IO/bUOi2QCzqF+Cdb1/QMjzUf7/L3j8K7e+HTh70FUtu7zMdJJAnLwdr42W9QFSvHtOM
         2XZAJjqhZBmpxKwoFro2pL6WyV9SunqFb9QFgd+d1drT/0FhszYwbt67yCPZTnmbuIXu
         JsDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=DnT5KzDt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F3nmVTbCIgFvsU3MlHPSyqaLdPWRtRMaCI6KfLqhYEU=;
        b=r4kkW/CXSJj5+6rs/xYyQ+s1lUWcaSpekFDY1ad/espRSp8g6Qup3gzOd2+vqGEeyl
         OtNMr71DD4QNVZPBuJzQBDFP5unxIK/9u+50mTLtJBG+HDkLn6qVx8JcVE2D6uV9DPSA
         5Cmewb1Lu5aBBjvzV0RLtWCazpOTPUhBafT0xXnR1Kk3XUdUWdTcSs12bigrlh85HKLW
         /ISP1ALoX2bANcsrL6Otun2/7ewnR2uiRJpMlFhLxl1i0P/2qxLeh375s605iF7eifiJ
         YTSscBgTKWwE9FEhXc7vYIerRDrFC786G6nHW2Be5tcIgduv30+5PeOkOyRilzZqfrhu
         724g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3nmVTbCIgFvsU3MlHPSyqaLdPWRtRMaCI6KfLqhYEU=;
        b=MrtgP33QKkptnu6c6NNm2rwMdz+2p9YjhT0MxBS/bG3f+uK+r4XNwe/GDenAfyhbaX
         ehcXU73gKpEmwuj/DwgfOvQ6PBlptCMg4ZvXJbGe5wa6qSNHkEwSFFcE5NgCkK7D7l2O
         x5V0eIYN0M0J+jk9o5jObzV+vosXwSEQ9gT5uNvgA9J6LkFuCpeHu7MQS1RhVMuj1PFT
         ba8ll5rzUZZbl6Jl/EMlyC30kmg9bbiECzSsYBWYh4Wy74a7ubvnOY0ADf16d0aaCcLF
         GfcejfihkPEc705vsK31bD8KUTl08lFOMKt0nr05Y4AaJ2N1+Mke1qo0oO2wteXpNSg7
         DvxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1fqhNy7YOm4qaVo60HvqzIP1II5Avl8UPKrPVg4cDtOwehRbsg
	T8RWbzF23LDN/eV7IOZ2B58=
X-Google-Smtp-Source: ADFU+vvXqJBSDbr5+BNIbnL9o1k2+dzs6l4FWwVw+TPnE2sCPzW3aIyKX2Rbsv1I83ASxW4aC+aurQ==
X-Received: by 2002:a63:fc52:: with SMTP id r18mr1351214pgk.96.1585113048702;
        Tue, 24 Mar 2020 22:10:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls1024021plj.0.gmail; Tue, 24
 Mar 2020 22:10:48 -0700 (PDT)
X-Received: by 2002:a17:90a:3606:: with SMTP id s6mr1657678pjb.195.1585113048338;
        Tue, 24 Mar 2020 22:10:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585113048; cv=none;
        d=google.com; s=arc-20160816;
        b=ofg0mrOnj030gtiwmpfUXAdwYR5djYtgaQ2tZPWeBzrzhqZv4Q/rBDum8sMaqIHLwZ
         OGNEO50ie9XetGvfXCAd5C1UhJWMQuYbQvlpN9EkKCbmb90+VgPdKCoCCkaceRTfStUf
         oRYP2RGSJ+XlDlrGL0NRkZVumNGcmCaj8uBlSWRSk865PKg+VL69bHyAlBkZZ9tMy5RH
         A/EO7xfudQ9A4onw+Z5JqqPFX2LdM979LOL3SHAomw2PWsjqHzcLVNgcnJGo8pC09pol
         fx4cE4WaqKijzXrBCKmsoOak+Ffs5/RNT0n6kkWLxCsCDc8QD/95lxVs89WRuN/Ye2N0
         GmcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=goHEK+Svl1j1CHZ8RGvjblzdAWdDcWxFnIuljEdud0o=;
        b=OnH9uXEs3PnIZMT7+iHx+QAQ8PBGsONEHOj2pcPonrnJ9CcRo98MA5OMavVJnd3F8Y
         UiFqjC/UdcjsLd1G4hcUyxvgjtCm0QwyOmNcEhBZGkk8cdX/oM51TpDOBpfsFnIuBhTq
         l7UU3vK1DMO7Ep9wJwS5KWxcgzLJMcKkIveklXu+CUBy3tRr5hrcXPoSM94pEUxLLrqf
         ctPnZuVbJVUQ9YWhlo5Ctb2p43dp+7zJjMYvmANiEx3Zj2HkEJtC9rJ31B7ZxWiqKhOC
         gYnqwDUi77eiEPWBHIs43gtrSK5Dtt8f5WB0TIGQ0HT6BHPfVsLz2aeX4BfTsum6v4Qx
         u1ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=DnT5KzDt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id y1si307098pjv.2.2020.03.24.22.10.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 22:10:48 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 02P5ABwN004997
	for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 14:10:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 02P5ABwN004997
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id z125so738548vsb.13
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 22:10:11 -0700 (PDT)
X-Received: by 2002:a67:2d55:: with SMTP id t82mr1251970vst.215.1585113010953;
 Tue, 24 Mar 2020 22:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200325045940.GA24974@gmail.com>
In-Reply-To: <20200325045940.GA24974@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Mar 2020 14:09:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQvgT=OWVuBVrvgdZ7AAkoaV_K_Y+w9bOFxRPw_1TOSUA@mail.gmail.com>
Message-ID: <CAK7LNAQvgT=OWVuBVrvgdZ7AAkoaV_K_Y+w9bOFxRPw_1TOSUA@mail.gmail.com>
Subject: Re: [PATCH 00/16] x86, crypto: remove always-defined CONFIG_AS_* and
 cosolidate Kconfig/Makefiles
To: Ingo Molnar <mingo@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        intel-gfx@lists.freedesktop.org,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Peter Zijlstra <a.p.zijlstra@chello.nl>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=DnT5KzDt;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Hi Ingo,

On Wed, Mar 25, 2020 at 1:59 PM Ingo Molnar <mingo@kernel.org> wrote:
>
>
> * Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> > This series of cleanups was prompted by Linus:
> > https://lkml.org/lkml/2020/3/12/726
> >
> > First, this series drop always-on CONFIG_AS_* options.
> > Some of those options were introduced in old days.
> > For example, the check for CONFIG_AS_CFI dates back to 2006.
> >
> > We raise the minimal tool versions from time to time.
> > Currently, we require binutils 2.21
> > (and we plan to bump it to 2.23 for v5.7-rc1).
> >
> > After cleaning away the old checks,
> > as-instr calls are moved to Kconfig from Makefiles.
> > (patch 11)
> >
> > This allows more Kconfig / Makefile cleanups.
> > Patch 12 is complex, but I double-checked it does the equivalent.
> >
> > Patch 14 bumps the binutils version to 2.23,
> > and patch 15 removes more CONFIG_AS_* options.
> >
> > I folded all relevanet patches into this series,
> > as suggested by Jason A. Donenfeld.
> >
> > If x86 maintainers take care of this series, that's good.
> >
> > If it is OK to queue this up to Kbuild tree,
> > I will send a pull request to Linus.
> >
> > Thank you.
>
> LGTM. I've got these four from Jason A. Donenfeld queued up in
> tip:WIP.x86/asm:
>
>  bd5b1283e41c: ("crypto: Curve25519 - do not pollute dispatcher based on assembler")
>  829f32d78588: ("crypto: X86 - rework configuration, based on Kconfig")
>  95ef9f80ed63: ("x86/build: Probe assembler from Kconfig instead of Kbuild")
>  1651e700664b: ("x86: Fix bitops.h warning with a moved cast")
>
> I suppose these might interact (maybe even conflict), and are topically
> related.
>
> Would you like to pull these into the kbuild tree? You can find them in:
>
>    git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git WIP.x86/asm
>
> Thanks,
>
>         Ingo


I did not know that these had already landed in tip tree.

They are immature version.
(In fact CONFIG_AS_CFI and AS_ADX are false-negative
if GCC that defaults to 32-bit is used.)

Can you simply discard the WIP.x86/asm branch,
and only reapply
1651e700664b: ("x86: Fix bitops.h warning with a moved cast")

?


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQvgT%3DOWVuBVrvgdZ7AAkoaV_K_Y%2Bw9bOFxRPw_1TOSUA%40mail.gmail.com.
