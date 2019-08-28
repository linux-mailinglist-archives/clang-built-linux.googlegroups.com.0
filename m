Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBQ53TLVQKGQEK3RWRPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA0BA064C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 17:29:08 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id y188sf322023qke.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 08:29:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567006147; cv=pass;
        d=google.com; s=arc-20160816;
        b=AWTjmqAXw9sLe0J+ttjKPtwM7/gcu6EQ71Wqqs/hOWyyODGxnpvJ2aYtOim86GT1Vg
         db+FK6ANH9nNflacopdagogVfDT+GBu1MZyaGnbtSQJahsX4hkKocKGLz8kCkwCLVBjd
         TwiUDXQotLsufpxWYkK0Y1gsyyS+WL4myls1pmhGfE/J//ulJXDDjPHZA580pmS3DWZ6
         gSBf1gAKv6nqFThYs3ORVMzqjx0r2SZaH4ragCc/MLXK043E5nxEgKgvs37GvRGErwTx
         hIeI+q7JeXP4sM1HIlrOlk6ve1WI22S3il7bcqpTiOf8xgGtHmMbXWafc7ejsZxCo7gP
         Gzow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=osaTQJ1mEX0D6Natcc0trhIds1Nr4pjsKtTPPEiDsXQ=;
        b=MTBFwc3kQQeZMHYqgmWBRwEpbp9qvBmf59xdm90A3elSiQHGOnmNsrCfNiO3RUZ6g2
         M1evKnBc6fTkFXUjS3bUA6x/RGAOE91Kse1i30SDfwcS2ZDN0gQ+m1BrTwdeVHR3XzU/
         eBGSjS/korQb0ze7txcK2/ZXLu1GDcuxqumiuCK+rROjfvRVFdHJipfXqAfT03rnQyrh
         5DqUPAH0FAdccTIdDRLzilOtwaGeKG41tYoLSI+s8cU61goTiQIqGB0LLNQuNJw7RS4S
         hBhGudf5cA7VuQhWkksIAsGNbxAYhdW2mWW//24pDu5D2Zs5NhewCz6CGEV8lGJCw3IP
         1E1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=osaTQJ1mEX0D6Natcc0trhIds1Nr4pjsKtTPPEiDsXQ=;
        b=LwwPrxJMYHurQlV2sBbwUI+FnKWQPIpxKNu9A2k1u+ab64Duvt6xrmrtLSW4f8oMZT
         dmuTYnF/ooiTvZUo713f/vXL3rbOxNY5cDN1qPWJDj+6KGV4Dnd+fhy/HGHoUbRO0o0m
         eMIQll5ikrbRlM7/5hhVQU8ENZRvj9J2qcnjvPCqnaKb3UmXgV9D+T+7K1D0T68zQAXS
         baLpwv5eajXInsyQ8Cevam0X19lgrjloGfMtPDJVUHFRICXsJJTqUBr4XCs3IyJ8Pnct
         gd4FndwOXCkozlRA/CY52rLkUPiHLyjPJgQvE15zZYGJ5HJ2Mepkx5jXtpUnylrTJ8/l
         +9nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=osaTQJ1mEX0D6Natcc0trhIds1Nr4pjsKtTPPEiDsXQ=;
        b=tgJmI1KEAit2OiPWbM44Ti375eZzJAjGlGqvouancs+3qwBpwIJglWcGMtu/3Wv62Z
         N83yBUAkgP/NDZA5W0DW95rp/jsdjBjVRJfea4tRyDR9jCo6pK/1lUTfvtRfDGk6ylVg
         3YWCRj9g3cdMi3+r4OoKWBGIhePeKRciOqE3V4wLW8YGP3vmVec3SM2pS4zscNoAtbRN
         6ag/1kLt0kduHAUrlxzKLAxD0Z40sxMOulesAc0BqIIpKeX7Dntfx77qqYKobrW34kuy
         u9J+xchJLTk7AlvP9YvKw2JFgLIPTPF6tZz228reIdWVUOo9IzdEyovvv9SHAobmM3nV
         jZeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW09TBMqDxjxj6mMV57wn24R6eq/nvelbQ2gToC1L4UztaQD4bd
	uR0xxy3lZG25WM7rMD5wP9U=
X-Google-Smtp-Source: APXvYqyGnhkMf3X5O0fg7PPOMbnO//fv8AbH6/7ewcLtO79RYaiEfwYzDN5wTLJI5e6zrK2oa/tq8g==
X-Received: by 2002:a37:9083:: with SMTP id s125mr3516939qkd.278.1567006147743;
        Wed, 28 Aug 2019 08:29:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3161:: with SMTP id 88ls875735qtg.7.gmail; Wed, 28 Aug
 2019 08:29:07 -0700 (PDT)
X-Received: by 2002:ac8:2df8:: with SMTP id q53mr4943413qta.234.1567006147460;
        Wed, 28 Aug 2019 08:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567006147; cv=none;
        d=google.com; s=arc-20160816;
        b=YgLxP7GmkpqOAt67NNuVVDqodLtkwE9TQmy9JypbkRQ5eP3JvSoNRCOm3l4w6AFqsB
         OFVITnNAYYKerIDg3I3AiEfD3PZ+JJyXlBZHQgbRml03Ao6Bnw4wnri/Dox24csa+i3e
         piRSgXRRxgMuDGPVVVL6VTWCRzN/VZ26xk+//dmy4mFh2Cm+nzNWHcegSiZmiDqAtHA4
         HIepOqaWsgsNs86Czp/CJgkos6ZPk/41TIg+YgqNjJAWw5renm1kQl8uiKkIJ0BSGPNk
         gRBL6+fvp/outXGwJQLCPPKCWtp83J430NP2N5h/mJGBJ9x13RgjZpDixtclVZDT/10R
         G7PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=aAe1wjp9JN1ttLqqfLIB3tUk3jgO2VwykepSQ75JmU4=;
        b=xRjIZ/K4F6vS/vcZ3HGCsnYr9Yuh0c2mVTC11qBuZsYIXfmNMpbTcnM/cmYhpFN9Cn
         V5gAcRS0bu6QdnDplZqvEmL19DDx1CyqkFVSZ72ovg5a6jjrWFf2ioAdRB3eksRb27BW
         shmwTtjPohyHHjl9tBJakK7+KREutvXp1ErjwMkCpiBZI8/wXYqn2aM/ifSgJT5xeEky
         4VRju2jPMYK/RhIyLwAEwYy60TgZ96mjXUAk2RxlI6fezknketBWJaZ//8pXp9dtKhOd
         oI2baP9VGSxkA6tuw32Wbcr1yj/EOd9nFpJX7qdvEmDdxBmR2n44jpW0rHgi5GqPa0yd
         Vdfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id r68si164699qkb.1.2019.08.28.08.29.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 08:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id p13so56131qkg.13
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 08:29:07 -0700 (PDT)
X-Received: by 2002:a37:bd44:: with SMTP id n65mr4552576qkf.286.1567006147108;
 Wed, 28 Aug 2019 08:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com> <20190828152226.r6pl64ij5kol6d4p@treble>
In-Reply-To: <20190828152226.r6pl64ij5kol6d4p@treble>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 17:28:50 +0200
Message-ID: <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Wed, Aug 28, 2019 at 5:22 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> On Wed, Aug 28, 2019 at 05:13:59PM +0200, Arnd Bergmann wrote:
> > On Wed, Aug 28, 2019 at 11:00 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:
> > I figured this one out as well:
> >
> > > http://paste.ubuntu.com/p/XjdDsypRxX/
> > > 0x5BA1B7A1:arch/x86/ia32/ia32_signal.o: warning: objtool:
> > > ia32_setup_rt_frame()+0x238: call to memset() with UACCESS enabled
> > > 0x5BA1B7A1:arch/x86/kernel/signal.o: warning: objtool:
> > > __setup_rt_frame()+0x5b8: call to memset() with UACCESS enabled
> >
> > When CONFIG_KASAN is set, clang decides to use memset() to set
> > the first two struct members in this function:
> >
> >  static inline void sas_ss_reset(struct task_struct *p)
> >  {
> >         p->sas_ss_sp = 0;
> >         p->sas_ss_size = 0;
> >         p->sas_ss_flags = SS_DISABLE;
> >  }
> >
> > and that is called from save_altstack_ex(). Adding a barrier() after
> > the sas_ss_sp() works around the issue, but is certainly not the
> > best solution. Any other ideas?
>
> Wow, is the compiler allowed to insert memset calls like that?  Seems a
> bit overbearing, at least in a kernel context.  I don't recall GCC ever
> doing it.

Yes, it's free to assume that any standard library function behaves
as defined, so it can and will turn struct assignments into memcpy
or back, or replace string operations with others depending on what
seems better for optimization.

clang is more aggressive than gcc here, and this has caused some
other problems in the past, but it's usually harmless.

In theory, we could pass -ffreestanding to tell the compiler
not to make assumptions about standard library function behavior,
but that turns off all kinds of useful optimizations. The problem
is really that the kernel is neither exactly hosted nor freestanding.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2ATzqRSqVeeKNswLU74%2BbjvwK_GmG0%3DjbMymVaSp2ysw%40mail.gmail.com.
