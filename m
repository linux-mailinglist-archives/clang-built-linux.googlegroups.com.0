Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZWA4X3AKGQEPLVZOSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id D40E91EECA9
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:58:15 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id d14sf2018808vko.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:58:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591304295; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgJD0JVOb8HszXYEc2jX+yiyIuxbZmDmzTLLWbMo21d/jq4+cK9IathAn4vNcD3nnt
         IJqM1lnPOyxr52XfYxtS3bX5TskNMnacnkMOOxI+PfuSeiHVY+Lmfz1wrxXrxaZHMBXV
         /PFfQxmmjUa4VLzdSoay4op9iB64Sk0Ryx/M8PzeAJwRO8ZqWArQvuW+qI87rndkArVI
         Os9iYdzlQTZbkoAMFvgEpxxF9SaT6j7NN+ZrpgT2446bWxI1MgCRfVo5Jav1tXiI2cjh
         S3GjsyTeOhdFwdX1mg5uEvjvrTCaNQdWGWGJp4VS47ra736fTEThAZcP00AOU68R0cOF
         0pmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gBO41aeDaQH+5wvGHVM2uNcDtVZKQAPnmjqX6vRTy+8=;
        b=0j8qX6PbFwbJzHNBGGzAQhFQUehOBL2mf5YUwd762jAdw89Mb/q5ithbPANp1bYhPA
         Cl+RYOCgNa09OCeTpHr3vob08QePKRLKLCsMlCTSaC4bSPcOCNGcj/FbcTQ0BD1GWo5D
         L9Smu68aDsVAJS0Kd4CXVmFtoquMKLOnlbYLGM+AyApe//r5UWG1Ko1Dl3ZU5WzDB45M
         ZrnnNXV2etC6y1LiiYUz8WhChFRjokzf5SFX2aMtxHzPhW+xUEJH4w3aO/U1njPSgAMq
         4W8YANsfOAKIWEUMGiWIyQcwM7h7IwmVXcdfcEbJAOX5AHx5xnMDOIPM2zeBy6scF2cC
         mVxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odXbhUUc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gBO41aeDaQH+5wvGHVM2uNcDtVZKQAPnmjqX6vRTy+8=;
        b=BawoKSIejio2zZ8FBjEau6drFUW4W8n80m4t4sLvd+90Mo3gfmT6xakjf/Niq2QiJw
         7BVmOrszU2zDa+NzHD6D5nLNXK960aPp460UUw7qen5WUWF3VOsSJhxSDbKA4i0wU6D9
         VoP7yYy3734g4Z1l8Swv669wej07m3J/TveeDryJAldYyyXGKKo+PUckwy0bwV3nhhOd
         Pca70RNM7haKXb5XHh7JZK67bxOjsc0eD1OehOaIB3FaAUoEpWe2qm4PlIn8MCCd7Vns
         /q5gk3eUOfbFegpPBN6iMCElilwsKm/RTsBuMlpNltSMnRXyjGaoSgr/dDyTLOJHcvIL
         +Rzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBO41aeDaQH+5wvGHVM2uNcDtVZKQAPnmjqX6vRTy+8=;
        b=VLzHSoIxvUZLHf+rxgatoc1cBOhTjgZVFLCt1N34LzeieFycvaIMHtQhA+5XFGRULv
         938kq9gcANV1XJ3yAcK1RLh31ddnwAq79tyc/nY/orkY1ccZjWMl62W9tuUCDzpxo5mD
         FeLlfjK7rDhAgIKOaRSWYIDu05e/Am9fWN296fkvYfmh3Wz77ahtdxltScUHCKldRAyh
         eP+uwkYx4DGeKMTS2ChPEdDH3PDVnIXJeQmTQgAXk/TqdWrqKsL5RMw+aU9RoetvJnge
         NV2cAj+8/7Cggxt3oCg+hY0jqHrDeVG/wtW9wRgiTUK6WSe4/9U9tVRzi2/bcSV4GXFN
         lMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBO41aeDaQH+5wvGHVM2uNcDtVZKQAPnmjqX6vRTy+8=;
        b=tYL0QS/xooUEDgY+YXyUEX4BAjEU6u/Ks+Vip8ad6nIOb83iDWHq0kjYXlAqaNYT8F
         A3ZRy9gfMO6z/lkTxNuz5RV9aJ0HmfJm+AGMZWdPkCV9yFdaGhEF6AsjHVUZoJfsG8sj
         XfXcxyANGT6RtKtRekw39WXN0Re/FtHEJpzB+nrMYxSsXzxMa9Yzgk4+LHRHVd/oXSjh
         0AISTuqt3reimbm9S36AV4A8khcY3jr8T1Xz1I8/tBU6vAM7Xhafz96KVhPTBo4MUBb/
         KVMxup6HkKEJefH3oV/u8eWlxWC277ejMAq0n7MfKv3oSOrJuVZnE7rZwUwYEUkOKixE
         pWig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mpR84DJ9J2kvwUQKqxtXchLtTpkcJcwMc9F5xs2pbrHdtQo4L
	C4ad9rS1t03z7EnKUROIV24=
X-Google-Smtp-Source: ABdhPJxUmffxLaLnHC3cEDkyY4TYC5CLGPH9+8WfFj63aXh1y7hpEJBj72avsDEsJqR30DkekS01xw==
X-Received: by 2002:a1f:25d7:: with SMTP id l206mr4954816vkl.53.1591304294878;
        Thu, 04 Jun 2020 13:58:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2203:: with SMTP id 3ls578463uad.4.gmail; Thu, 04 Jun
 2020 13:58:14 -0700 (PDT)
X-Received: by 2002:a9f:21d5:: with SMTP id 79mr5095381uac.54.1591304294461;
        Thu, 04 Jun 2020 13:58:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591304294; cv=none;
        d=google.com; s=arc-20160816;
        b=anuasnjfg6foy00Paw53XJsLjqfwF94PyHC2p7GQersB32pQzZNuRCh2fyUZBPOomC
         Owh5CTvVaAWAWkM6T1MeZchueI+C+XpOeZu3++XQ90h6SnCC27g+ku4p+q+COYxcWItz
         wfQMmy3UyDw/+gnPQW1u33nSSfRVQueEZsWFySLaGwJQQieYIPNTmFvHr5OPJyN+E5g8
         rgp4kx69PWHJUh0vOg78ZoMWol1+zw55G/22TQbS5FrnxHC92BURpbCKNSPOqOo/P4tO
         ceZmAZSgMQH0ZvwA9k4/spDEviXQvtzYtLfBFC7fpkjWyi8MOeshGuEJIdFkrZoO5AtJ
         jDMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Qe+5VsgePcwf6ejrqCiKCctQ/WjhPUBGKBkCEYX6uA4=;
        b=yowyXlzR2UVN2Su0D/XrDFD7YwuPN41tx8M+JrcLh8oFzaaRoPqb2ZRXYmhVUj6rBC
         hKX8tuA/TDkaljMEI3G/OYmb3BQdXWI5pZwQiDeQiWMHDVXuIbEXPOhtHI7wPC10AAXP
         4Lf+gN14acuxrKtlahgUQs+kLPYAO5wLRIQAbl/XzjZSfdPzZlhmhuoeWi0bHQPPF1LF
         9aLxiFsOGSMx/AK4yRwelGzuLyRAzFII1o3tp4Wx2lrudN9sFj/dTW3jHxBCe/wG6Yb2
         0Fu5yU4NFspqWaIhSlpBQYAIyQVlKKagfVtw8VsU5V0/c/1Skj+feoQsq6bfbTNj1qu9
         PfmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odXbhUUc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id q20si416764uas.1.2020.06.04.13.58.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 13:58:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id q8so7930966iow.7
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 13:58:14 -0700 (PDT)
X-Received: by 2002:a02:ca18:: with SMTP id i24mr6012139jak.70.1591304293893;
 Thu, 04 Jun 2020 13:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org> <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
 <202006041318.B0EA9059C7@keescook>
In-Reply-To: <202006041318.B0EA9059C7@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 22:58:02 +0200
Message-ID: <CA+icZUX7HE6cVoyiKtvOe85F+npUzGy5wmScTNCKRVeCEy8Juw@mail.gmail.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=odXbhUUc;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 4, 2020 at 10:20 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 04, 2020 at 12:29:17PM -0700, Nick Desaulniers wrote:
> > On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > simply initialize the variable or make compiler changes. As a precursor
> > > to removing[2] this[3] macro[4], just remove this variable since it was
> > > actually unused:
> > >
> > > drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
> > >         unsigned long uninitialized_var(flags);
> > >                                         ^
> > >
> > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks for the reviews!
>
> > Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")
>
> I originally avoided adding Fixes tags because I didn't want these
> changes backported into a -stable without -Wmaybe-uninitialized
> disabled, but in these cases (variable removal), that actually does make
> sense. Thanks!
>

Fixes tag does not automatically mean it is "for-stable".

[1] says:

> Patches that fix a severe bug in a released kernel should be directed
> toward the stable maintainers by putting a line like this::
>
>   Cc: stable@vger.kernel.org

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n299

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX7HE6cVoyiKtvOe85F%2BnpUzGy5wmScTNCKRVeCEy8Juw%40mail.gmail.com.
