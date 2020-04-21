Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM537H2AKGQEHXZQ4II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A671B1C13
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:43:01 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id r129sf12637140qkd.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:43:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587436979; cv=pass;
        d=google.com; s=arc-20160816;
        b=rQlyQgNbDATDQizh6uQL8kXinoFAprn+WF9E5Z8ARXq5F8Oyf+ntAswBysKJf3gmaX
         hTeuUZPqU6MpugETgvhOK54AVmM8+gpLj0fEuWBfguic8fcu8IQ2wE0e3qdTP0KhglRD
         XInvBBGsiwGg19hoIq58R48k6Pd/aVm5TvJRUhkM++5I9LmWoeQkWWy78h2w9pkJwNeM
         Vy4b0fbjZ7ftjl8Aju5ZfjIyb6H3AJawZorlDYXyhVywsXiXGPgskeO1IUxKACZH0rNn
         1jqFQ1wWhXwC1/etafQyZKUpEoyOL8BR2EkxWwbxPXkqXGslT3fSFgq6fkN1uWVx7r/t
         T5wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=l2+rooNK9YVvbsUnWw0eiSjU4/M8DMRT0atu4vawfRQ=;
        b=PEVVJthRmFLFJcEvbyMGciwYoo8HzBBRWoNHgwpuYdTycGAgvvhMEoF/Z+J56BwpwS
         1znBxdFEEkAvSyR3RmCh9JQIvP4PzVAKaAOigZ8y8OjyjZXSyj7PYP7/TC52S05CZRy9
         45FshwC+K2D9y1AiT6Ee+1YOAdK4ZAAo9HJPR3Xu2ApE2UDaketKYG1yTZQQ1Mrqj7wA
         hygLUHZqzaKYAu8D9YIpCACuTo6YuqWf72/OsfdSct9EZvXnijWP6jTMOToKVJrom80O
         pepTvj+lR4KGnms36zNCou2uuidWyJefEXOglDCiOOoYgGm91+LtEiiqPxIecQZ6Qo+R
         eaLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKmwOwQW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l2+rooNK9YVvbsUnWw0eiSjU4/M8DMRT0atu4vawfRQ=;
        b=ZTbVjmYRxSAdLNQpBtI9KDxIYp1wbyA5zJTu4xwlZ93xjR3gQO2w/w2o6kKguEl1Rg
         EUcKR7kEI6P/6gg7vc8aLkyXfRITiF59KBJQcrjo+jVCWgfllPG95fPwKVRr879p9Vk+
         CZTgjUSJ6snrLiuZ41YsdUZpiYK+vFCMIFRKds7Fk1SDjCbhxq9AOwwNcggTSpZJpkIO
         8q4YKVcsNZIJcq1RgEF9MW6CUCSb9XGjzKZLK48LP94flA3wiZpe0A+inI+h1aSDpzg4
         Jez45Q8FZLq3+A0lZDUx+Kf9cC4APIj+g57EW2dNu6sXipUWdIrwpeKD5VEGmxurzSxA
         d2cg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l2+rooNK9YVvbsUnWw0eiSjU4/M8DMRT0atu4vawfRQ=;
        b=GQ76RB2YhDYOU3ghOihOKtopO/6gDTy/WgZvBTAq2oETAljr4ExakPC1nd8/gKacT4
         Teq/1BASjTcQnmZ84zeBNA8VmeGrsOaO6QG2lUmqQo6ate6RiBNrsgVtQL7f/0/wao7B
         PHBvoOxtvHrff4G+vepzTsnqzOAkAm/uaMDOFUCc/GljVkn6mLyHtpIxh0wef29Bxa8b
         pSUoLnf9goGhan3BIZSjvq9ZMPtDmz4aMvB19DsM25Mk+E3ipYb66kjlEiFy5jhewt0d
         ylQD2jp9zOO38GNpXSgzZeRA41QZF6rigW0a5JhM/92GMw3xok+mCflozJ0bIjJAo1Od
         rckA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l2+rooNK9YVvbsUnWw0eiSjU4/M8DMRT0atu4vawfRQ=;
        b=UFV6mnRTyICIvtn+qC56oqZk3KhIFz3PxryPABscY0ml+DIF+qXSLHSYgqyqWeZf1x
         +N5S7bm5Rt/mGYEkbQLDw5VM07NGm0jTJCA1hBCQMd5Bar/0yuG6P8XaircO1vydulPv
         Ux6FNyCj4U5C6G9Zgmnm2UxXSRVOrvy9Jb4pDVRDfg8ec85DoUfi2ckGGCePeABtuORh
         aUzXEG4mk1hS+SHNXARoWcknXd6PYIWL3j6ivQjnPiP+n8KZpRJOSg+BlMiov6uF9mk9
         Fn58TiL8HOQXGIG+UE5V128pVenLrzcDvvpEQ/0oLMZlHSlnKVjAEo0wgYJ+7X9KW46x
         ahuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ+uALu+OO3CcGYCS04GeK+wcpyTzJV1alEwDXiwKvF2XnI3OVp
	oJATsji91vc9aVF87wl0tgA=
X-Google-Smtp-Source: APiQypJ9Uvc8W4xfMrubcDRv6riLKrYkOAd85GqQC6o5GrnKp9N6zQhVGZc5vUHNb2bkfIQs0hJ9+g==
X-Received: by 2002:ac8:16d2:: with SMTP id y18mr19589329qtk.64.1587436979656;
        Mon, 20 Apr 2020 19:42:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8d49:: with SMTP id s9ls4184948qvb.10.gmail; Mon, 20 Apr
 2020 19:42:59 -0700 (PDT)
X-Received: by 2002:a0c:f012:: with SMTP id z18mr18247851qvk.42.1587436979341;
        Mon, 20 Apr 2020 19:42:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587436979; cv=none;
        d=google.com; s=arc-20160816;
        b=ErqwjtFSEyH48O2IWh8cMyjIPZxllLZLAhHOACZXjcWLfHgSN31il8kKLe41+Wiv8P
         Xoe/4MvMjH9Nj6bjp+DeVfoT+8kGNOtBJ5IGHxJG6LGy2kG2z+C0w0/0WBYrEoMW4BH/
         qr+K63z7PmGi3DN76LXWM4JYm+y6/vQIJCdl/h+yRzRd4jizP8L9HCXt54ySLukZtPgx
         oYDFlKuDo071HTfLGHAqBW4BL1K/Pxqzb4f6XDttNKJU25UI+1SCINs6gmurin+xYNeE
         8dv2APvLfprM2+HlB6Sve09jt7of1Q6E6fSjJDl8jieeP5sbG11OVuj/+/sxQBkAmLcg
         SjgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=22HJzOmHnmam1tgxVzraGLccgsF7pCDzxppnKXmeCcc=;
        b=Fjk5l1rqOGGkAN9GLNgiuB1589UWEaQ5lX+6ZFQPIHfskD2uZAjgV/2dM35PnDeSPE
         2Lsqbv8nWSmFo/lWMmhNI6mIx7M1KC8RDLQ+h1CAGj+xWvB+wsJit0wJ4Tj5FBOW9cqJ
         nKon4U1I4Khg4gdvMBk2y7VB1ga/kLL22iaVQogzk7xpbSE/tMTQwhEkkyR210z6K9N0
         NoFPNs/cTt8HF+1gBiEmTeP+54j+kgS4JcOsZMXx9ca/d8XsbqT2jcWL50Z7cvoTd/va
         3g4csF2SurVvvBQcYpQ2OX8I2ueaM+yPb1kQs1h6wkHVgAwMGSw8Nx3DbWy/a7V1/arp
         ySLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKmwOwQW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f16si107658qte.3.2020.04.20.19.42.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id a2so6175271oia.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:42:59 -0700 (PDT)
X-Received: by 2002:a05:6808:64a:: with SMTP id z10mr1702091oih.71.1587436978810;
        Mon, 20 Apr 2020 19:42:58 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b6sm425594otq.18.2020.04.20.19.42.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 Apr 2020 19:42:58 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:42:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>
Subject: Re: [PATCH v2 2/3] MIPS: VDSO: Move disabling the VDSO logic to
 Kconfig
Message-ID: <20200421024256.GA42179@ubuntu-s3-xlarge-x86>
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419202128.20571-1-natechancellor@gmail.com>
 <20200419202128.20571-2-natechancellor@gmail.com>
 <CA+icZUVaLW+38WEJhqnfO7B_unHvrbSr0moKnfJ6zXGGA06CWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVaLW+38WEJhqnfO7B_unHvrbSr0moKnfJ6zXGGA06CWQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jKmwOwQW;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Apr 20, 2020 at 11:53:55AM +0200, Sedat Dilek wrote:
> On Sun, Apr 19, 2020 at 10:21 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > After commit 9553d16fa671 ("init/kconfig: Add LD_VERSION Kconfig"), we
> > have access to GNU ld's version at configuration time. As a result, we
> > can make it clearer under what configuration circumstances the MIPS VDSO
> > needs to be disabled.
> >
> > This is a prerequisite for getting rid of the MIPS VDSO binutils
> > warning and linking the VDSO when LD is ld.lld. Wrapping the call to
> > ld-ifversion with CONFIG_LD_IS_LLD does not work because the config
> > values are wiped away during 'make clean'.
> >
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >
> > v1 -> v2:
> >
> > * New patch.
> >
> >  arch/mips/Kconfig         |  2 ++
> >  arch/mips/vdso/Kconfig    | 18 ++++++++++++++++++
> >  arch/mips/vdso/Makefile   | 30 ++----------------------------
> >  arch/mips/vdso/vdso.lds.S |  2 +-
> >  4 files changed, 23 insertions(+), 29 deletions(-)
> >  create mode 100644 arch/mips/vdso/Kconfig
> >
> > diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> > index 690718b3701a..45220e4b8a65 100644
> > --- a/arch/mips/Kconfig
> > +++ b/arch/mips/Kconfig
> > @@ -3275,3 +3275,5 @@ endmenu
> >  source "drivers/firmware/Kconfig"
> >
> >  source "arch/mips/kvm/Kconfig"
> > +
> > +source "arch/mips/vdso/Kconfig"
> > diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
> ...
> > --- /dev/null
> > +++ b/arch/mips/vdso/Kconfig
> ...
> > +config MIPS_DISABLE_VDSO
> > +       def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
> ...
> > diff --git a/arch/mips/vdso/vdso.lds.S b/arch/mips/vdso/vdso.lds.S
> ...
> > --- a/arch/mips/vdso/vdso.lds.S
> > +++ b/arch/mips/vdso/vdso.lds.S
> ...
> > -#ifndef DISABLE_MIPS_VDSO
> > +#ifndef CONFIG_DISABLE_MIPS_VDSO
> 
> Should be s/CONFIG_DISABLE_MIPS_VDSO/CONFIG_MIPS_DISABLE_VDSO ?
> 
> - Sedat -

Ugh yes, thank you much for pointing it out.

I'll send a v3 once I get further feedback on the series.

Cheers!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421024256.GA42179%40ubuntu-s3-xlarge-x86.
