Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7PV56EAMGQERK3V7DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B673EF164
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:07:58 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id j33-20020a05600c1c21b02902e6828f7a20sf7541wms.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:07:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629223678; cv=pass;
        d=google.com; s=arc-20160816;
        b=S2psXpm7ke+ZDblUV1JGD146yU0D6vL+NeYflOBi29F3wMqfM+UGCXf5DocalyYEcO
         QxPccsfNhfjhGnrPHexlgqDTaWEMe/xFdwvj41DGJQLlcZ46FmepoMjaGx4KnNSCbeoi
         sU6JIXFHUMbjZ+XnynpFwIphNYtevbKgjbUvTm7QpU1F4rD0hA1/0APrfHJ9gTabEe8r
         9U0Tqr41/iwZsTGaGTaWyOFaC9peH5r/hfaQ+Ssothr2aYkc4/T2HfeaF0+cythfMvxd
         g1/RRBdo4AtOEhRoInoGKdg/LFfMOVeKxgVcZ8cTlOUDCwVmGE0ZGr8cVnmcx1vx4sJO
         qsKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uOd0h4RlF0eBitlBl4ViFD7OcBAVzAucYzvtJ8Fcicg=;
        b=KE0eb618TAiJL1kMYxMlivYhw761gdzYdba71Ot4fYFPhzHW9i0L08vmYOmqknrZhp
         3JW1QIKLGb2fLAfcHUgbT6bF8oysLs5hes1crBJtAEcZfsK4YL0ooKleVh0oxsX+MFED
         jQvXYNluGb+DZbbqpZJ0B5c4LQqg+yBdnjY3+dMoG3j+o4VBWFlBboDUMRtpSDVe5CzJ
         39wQbKxTKvQLbt1Pw8BYtbjYA8jebLs6kOfzV/uOIKxDYhhtItYxEnOVbK9k1p14frq2
         eAUKH8IPlKGfRV/+BHhLrXEUR4G71vfxB716UIXAzouMkYTJJF4B+PGFR+3MUVb6ywkB
         N3fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NKdK8us0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uOd0h4RlF0eBitlBl4ViFD7OcBAVzAucYzvtJ8Fcicg=;
        b=WGfQZOmq97T8GeOboMRMTePsvpHkqQT0icdDUA2MBXgGZzLXkFnyvv5TGyrHNNb1m7
         OyVGEQGTmmtTz0DpMW86qxEW/1VK0wnROt2FE0LW6dPGb5aCKVkrlbUioi/5tOrYqrUH
         rTox4bTRPinQwJzjczTN4Fdp2Xr+mQl0NfPvQN7LMGyOsj5lw9ExLz05aFRIsRQalhsE
         29d4Pr+l4zHbw4wd0nFYP9eV6gwsmX1JjWJXLmGjC4nbryrwjJcp3FKobSPjfy7d9Ug5
         DeTPP2c+0Wezy1xVH7xb+YzcgREEyywSPhETXe0I1xw1K5cLe5eM8mf6jq59JeGzeBaY
         dhQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uOd0h4RlF0eBitlBl4ViFD7OcBAVzAucYzvtJ8Fcicg=;
        b=C0vE3iSExgDcw4eNPpYLNxon4DLYlBvXfXhYZH6x7c2kqs3jI3nKvqZKLw/bEcmypP
         sgBryWsvjf44YkkZIHIATPAAV854lyPeXoG21Qo0tnMFaC5TtTWucQ5mNxLYgzhByWCA
         PA4ktIzQrtmj64mTSL+O7+XmH/flXaxDZ54pagwfvyr5OR9zOAab1gon3iNC3metdrLk
         Vx51UQGtqVf7utLaL2q9kw0PO4Dfx7rAu3SaAIECu283jT2xtpOH/Tg05D9a/MPb0A4D
         kCD33xeEdwpDCddeHy+G3pfaxIhuT5KAcAcgOkwTVGZrCTtOQ+x2NPp0xiDmLUbacCV0
         AxAw==
X-Gm-Message-State: AOAM532NjHwo7jRk9uz3MWkt7ehO0eNLOX3+I5NgZD3Q0gVVxRjkrooA
	PFCikXsF9nRoDdegi6NTCe8=
X-Google-Smtp-Source: ABdhPJzkCStW3MfhR98l9Lb8+dp87yWuxgeVnhWg1Aq1PAVPSr55V9lh8BXrVIuRn9+pYXwOYObjPg==
X-Received: by 2002:a5d:510b:: with SMTP id s11mr6102281wrt.63.1629223677901;
        Tue, 17 Aug 2021 11:07:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c3:: with SMTP id g3ls1418844wmk.0.gmail; Tue, 17 Aug
 2021 11:07:57 -0700 (PDT)
X-Received: by 2002:a1c:1d84:: with SMTP id d126mr4566099wmd.160.1629223677027;
        Tue, 17 Aug 2021 11:07:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629223677; cv=none;
        d=google.com; s=arc-20160816;
        b=Dw4mDJr82AOTgFqMmaIREBFEQSdpLAKr9tN9KbYm0YSGPOrEbUvBzPUFovNooXpfCc
         PG96+1+JuDQXSU4AmICOG5VbfO5fyxUQlLLrsGh2mpsLQBnXXe7XT5JGJ8xrMZFy08xr
         0Hxk51auhcwuuymbZnrgFDkdH0nwtYAihPOCjJOSL7YrvZjLAiSciEo9z7gMj9zHNEJm
         eQ/uod+hpN6447Xomwpjf4kVNx2okyEGb7IYMVxupGcxuTG22QSA2LJM3h/gCLcY+T24
         pt+xLvNE52KTjmHuhSeiRJPlq4befahOCp6v9q3DZwpTwmHLqY/LbUINpUXYR41Z+Kj0
         2kCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K3Ka4koAuO/eyWNzbf7wpZBKsg+7E2Iw97vQbCYohS0=;
        b=lNvDkQ+VHQpdraZSv6XW4zgd+OTB/Aeywat7O5xgb89PRkkJffIMJDeIqjVbDB0OGq
         6Mdjvi65gkpjjDx9J24XYoa3O8fo5U7QMdjCAa1AyEbxs+G645PREv5WwlCVr6o/Ng55
         T4u9dLyq0dG38mLRO8j1oick4/lTnxVIfLh8HaW9Wv0GHJWcwdjptiD3hPC6lN+3NVca
         ClRbXbY+/Qjpu8XUrDy23yhXc35DG/6Y6Vh98vYituSdN0TbSZzrjL/y0Lfv8wlemkHo
         w25ZjGsnxBwveLnCG8sSsmV1HtJ8eREeo+H+gqm/fdjkOOhtceu6ys4AcuqJFv7CZ8fj
         ltOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NKdK8us0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id c18si131091wru.3.2021.08.17.11.07.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id c24so42957218lfi.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 11:07:56 -0700 (PDT)
X-Received: by 2002:a05:6512:3041:: with SMTP id b1mr3246042lfb.122.1629223676223;
 Tue, 17 Aug 2021 11:07:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-5-ndesaulniers@google.com> <bc8cf0be-9e51-e769-0685-2594802eead0@kernel.org>
In-Reply-To: <bc8cf0be-9e51-e769-0685-2594802eead0@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 11:07:45 -0700
Message-ID: <CAKwvOdkO3ax7gN-n5OJO7-320BVK+B-JDs0v=3vZs9fPezwjDg@mail.gmail.com>
Subject: Re: [PATCH 4/7] arc: replace cc-option-yn uses with cc-option
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Vineet Gupta <vgupta@kernel.org>, 
	linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NKdK8us0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Aug 16, 2021 at 7:05 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> > cc-option-yn can be replaced with cc-option. ie.
> > Checking for support:
> > ifeq ($(call cc-option-yn,$(FLAG)),y)
> > becomes:
> > ifneq ($(call cc-option,$(FLAG)),)
> >
> > Checking for lack of support:
> > ifeq ($(call cc-option-yn,$(FLAG)),n)
> > becomes:
> > ifeq ($(call cc-option,$(FLAG)),)
> >
> > This allows us to pursue removing cc-option-yn.
> >
> > Cc: Vineet Gupta <vgupta@kernel.org>
> > Cc: linux-snps-arc@lists.infradead.org
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >   arch/arc/Makefile | 3 +--
> >   1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/arch/arc/Makefile b/arch/arc/Makefile
> > index c0d87ac2e221..8782a03f24a8 100644
> > --- a/arch/arc/Makefile
> > +++ b/arch/arc/Makefile
> > @@ -18,8 +18,7 @@ ifeq ($(CONFIG_ARC_TUNE_MCPU),"")
> >   cflags-y                            += $(tune-mcpu-def-y)
> >   else
> >   tune-mcpu                           := $(shell echo $(CONFIG_ARC_TUNE_MCPU))
> > -tune-mcpu-ok                                 := $(call cc-option-yn, $(tune-mcpu))
> > -ifeq ($(tune-mcpu-ok),y)
> > +ifneq ($(call cc-option,$(tune-mcpu)),)
> >   cflags-y                            += $(tune-mcpu)
>
> Any reason not to just turn this into
>
> cflags-y += $(call cc-option,$(tune-mcpu))
>
> ?

Yes, you'll need to pull up the source; the diff doesn't provide
enough context. tune-mcpu is used in the body of the else branch
hinted at by the diff. PTAL

>
> If $(tune-mcpu) is empty or invalid, nothing will be added to cflags-y.
>
> >   else
> >   # The flag provided by 'CONFIG_ARC_TUNE_MCPU' option isn't known by this compiler
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkO3ax7gN-n5OJO7-320BVK%2BB-JDs0v%3D3vZs9fPezwjDg%40mail.gmail.com.
