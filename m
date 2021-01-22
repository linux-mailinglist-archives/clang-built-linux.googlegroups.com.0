Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBMODVSAAMGQEEHMXOII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3A6300C09
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 20:04:18 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id t17sf4549443qvv.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 11:04:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611342257; cv=pass;
        d=google.com; s=arc-20160816;
        b=Evqj+uoh1PK8JMpO6PLI0Lm3oybSMgR8Ys4SOx2ITSIEQ0hqbZ9zcgi1/sW0QHFo9a
         Gc5mfRw4J90wmoFIV4WJVbbQT6yGipXfrKXtbiepozPW9XorfYwzwLVfS9hwTod0/BQG
         YlS1tGvHCjHIJxkJjsEvmyJ3DeBU+QGEsqpKi1CNu+rCnEb7Au73jmWvJCwdTXnolIwy
         oKr5yZaDr//BJxK/sxuX/rAI9Ass4kom/BFf8HOerGwJ8ADTRPpXcC/vjkgJRubZ87Wf
         dtubFyjN/dubkE6HP93NoYtlB8HxyQcI1seg++SJKIsqqMAV4qJfsM/q65zQDwUCADnh
         Odbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=THxbbO3pjzLKCpJlNxRZ91COjGJXsPdCJYQG/5oTU/Q=;
        b=a90eZQyDQyer80B6Xt7BNYExpcQpUk/Wd32Crnsf3C90JfAT7P1PdzQuGB87Oyapil
         6CyodLgbD9IIy9uZSKKOONQGW4w38g1/zAiZtnws7chM3qaYxHMPSSsd5ivIEWzjqJ9C
         siesfGsY5LY8KgimzHqc3/Yfw/xwInrAGHoRTxPgjjLMxlrf20qXRk8xfh8Tlp9twfhG
         tLxxYGAosS7psC+SGs3JMB4e8JZtPdtjt7ZbaU3RletONWQhnl6/+I3Vz8zJsfCWMa9q
         wTK31UiVsiXd6KLSaecPM6VU1Fpc8rx/cUZXDyf6bpeqcMBWE/tCcekdxDMMsLl7CBLk
         Boow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bwkqMmtP;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::a2f as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=THxbbO3pjzLKCpJlNxRZ91COjGJXsPdCJYQG/5oTU/Q=;
        b=k2Ikxu0frib1jg/UGE1HOag4edKKVoaTayUqu7Xh6Z74SFStJlV/jfULmMD5tcqE0l
         c9fc0SgAFzWIrqUYJu9XRIvNH7gg/a8Wx8RbfRayXUgCL/Nc9+Qd7dRGyxkO9bkzeZ1B
         tj2n8K3PK3GqLm6+gqvq/3j5k1aqdUu1tsOFCMlOsAE4OiqmWtAeIDGJnsGm7K5VLaHN
         VNh3ruMdsDMwahVsUzrqyQMJjbs0xHk3l29cf4CszVUzn4cMTcWilFZIksDCi5LYqSqP
         WuWEeWxFfPy+J/zhVLi9zUX1pYnT2NUziHkLf3uCgocT6aadvK2mFe1/04rD0ZbN9ONe
         aFOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=THxbbO3pjzLKCpJlNxRZ91COjGJXsPdCJYQG/5oTU/Q=;
        b=rRzAawqpbJPbMZGo2PAcV8mk6XXvEu/tWegB2/DJiccEU2CqlOtM2g7zCir6koPxZP
         vfSaLS9zIXW0c+zQK0NipNBwq45G7ACZWs9nJMDoWV7/67LqLghb1QAJI2mVhPnaLCIW
         3CKI755EHzWFgn/vT3O2v9/XI0dLlKppvQWh5Go1A8CWPOXHJlbR3kkiwkYHse6E7Q1V
         AUc/tZP9fmw0lxgS8vynyUXlj52QzGckXzlcx0s0faSeZ6dTNb/UzbnCw+tK2oTJSCwg
         6MOh6hvlLIMq+ppmWAfOCiqDyGtpJ7hzImChFVa99oMmcKIUjHlvP+kRWnqazSpkW/Lv
         quaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328ZKcknr3fO6weWHySzBqdpy217qpHbrooNEa+WVIZqaAJTNx6
	5l3gPfoHaok5SXZg7CvAFlY=
X-Google-Smtp-Source: ABdhPJxc6T4MfNHY9zEX9G9hiT+c6aByEPmBc/oEbTKTsWSPuqyZ5i2a8RYbZePRbayRfDY788gYug==
X-Received: by 2002:a37:a2cb:: with SMTP id l194mr5389946qke.152.1611342257441;
        Fri, 22 Jan 2021 11:04:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:132f:: with SMTP id p15ls3325882qkj.0.gmail; Fri,
 22 Jan 2021 11:04:17 -0800 (PST)
X-Received: by 2002:a05:620a:649:: with SMTP id a9mr6184455qka.466.1611342257008;
        Fri, 22 Jan 2021 11:04:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611342257; cv=none;
        d=google.com; s=arc-20160816;
        b=CeAXGa/3xw9uNWIVdAUvewU+2l8ZOp0HtSxxd0nQVxXSZXmoA9hwM1tEHgk+DKKxmQ
         qimkVhAzLCbYsdqCzj3/whXqlVLIhBalOkoLUpWnI2wjQCaOWBxLhoepwMNJFdpPyCK3
         rfaeYR/s4pgbNrsiafUuyKnhzHDt3AFKV0bRflEUc6fhrpDN54P7xKxydPl0sMgWFi+C
         J4ShGo4PsZwh2s4vIPHhGSl7dT/NYhvmzpdavd3xA+uHuNIIIVPdxWUFu/0wKj10bxsG
         rAmtx60q6KmshVZ1luBvAmmavCmAWePAFXVCC5cOAkNCXAMR2N1+4H6bU++goO059SXe
         1SRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GFbt9Q9FleVVeCUdG8Si9d40jYAPeifwLGkQip6/tp8=;
        b=R4Jsd34JmNiIRjb3xTo/BaFzrHOyRZnJ0M3eRzfvzOxgHjrtZwwjC29RTzNBoqNcww
         RP4cXvQBTxzmKWFPUbg30kODGNYA58RgcU6ceYhpFxZsq2Y+wcD0b5nmzlp4k3vSTc+9
         ZddD83Fxd1cLWAzYHkHXsZg6W52801uU4AgoRc9tGdsbk2yIVVQG1kT1f4NiNDHKhA2v
         cqC5jRkBG1GRvDQv174KYAgoNqbSiCgxFRKGaThczy3u/cqBQdvPAEACduhxGVTpBRKy
         NmfJXXF5tzDWStU1005ZDNXfEjbRzb+aIPSXMguRIwi50KDCvKUkB7u82hx46IJwNoJf
         p/yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bwkqMmtP;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::a2f as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com. [2607:f8b0:4864:20::a2f])
        by gmr-mx.google.com with ESMTPS id z94si830724qtc.0.2021.01.22.11.04.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 11:04:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::a2f as permitted sender) client-ip=2607:f8b0:4864:20::a2f;
Received: by mail-vk1-xa2f.google.com with SMTP id m25so300158vkk.6
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 11:04:16 -0800 (PST)
X-Received: by 2002:a1f:9fce:: with SMTP id i197mr2049521vke.18.1611342256469;
        Fri, 22 Jan 2021 11:04:16 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id v14sm99824uak.20.2021.01.22.11.04.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 11:04:15 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id o125so3601291vsc.6
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 11:04:14 -0800 (PST)
X-Received: by 2002:a67:ed09:: with SMTP id l9mr237347vsp.4.1611342254067;
 Fri, 22 Jan 2021 11:04:14 -0800 (PST)
MIME-Version: 1.0
References: <20201203202737.7c4wrifqafszyd5y@google.com> <20201208054646.2913063-1-maskray@google.com>
 <CAD=FV=WWSniXCaC+vAKRa1fCZB4_dbaejwq+NCF56aZFYE-Xsg@mail.gmail.com> <CAKwvOdkFpqEDvJ5b9wpwEhnOdh-YJ8GxCc33JcHXqNRDnO=RfQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkFpqEDvJ5b9wpwEhnOdh-YJ8GxCc33JcHXqNRDnO=RfQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 22 Jan 2021 11:04:02 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XUuo3OaDVOnFiczUTeyKt1moX7nQ+XEX_HiDpv2f3k8A@mail.gmail.com>
Message-ID: <CAD=FV=XUuo3OaDVOnFiczUTeyKt1moX7nQ+XEX_HiDpv2f3k8A@mail.gmail.com>
Subject: Re: [PATCH v2] firmware_loader: Align .builtin_fw to 8
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bwkqMmtP;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::a2f
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Tue, Jan 5, 2021 at 11:20 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jan 5, 2021 at 9:45 AM Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
> >
> > On Mon, Dec 7, 2020 at 9:49 PM Fangrui Song <maskray@google.com> wrote:
> > >
> > > arm64 references the start address of .builtin_fw (__start_builtin_fw)
> > > with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> > > relocations. The compiler is allowed to emit the
> > > R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> > > include/linux/firmware.h is 8-byte aligned.
> > >
> > > The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> > > multiple of 8, which may not be the case if .builtin_fw is empty.
> > > Unconditionally align .builtin_fw to fix the linker error. 32-bit
> > > architectures could use ALIGN(4) but that would add unnecessary
> > > complexity, so just use ALIGN(8).
> > >
> > > Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Signed-off-by: Fangrui Song <maskray@google.com>
> > > Acked-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > ---
> > > Change in v2:
> > > * Use output section alignment instead of inappropriate ALIGN_FUNCTION()
> > > ---
> > >  include/asm-generic/vmlinux.lds.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > Tested-by: Douglas Anderson <dianders@chromium.org>
> >
> > For whatever reason this is hitting developers on Chrome OS a whole
> > lot suddenly.  Any chance it could be landed?  Which tree should it go
> > through?
>
> Andrew,
> Would you mind picking up this patch for us, please?
> https://lore.kernel.org/lkml/20201208054646.2913063-1-maskray@google.com/

I just synced today and I'm still hitting this error when building
mainline.  Perhaps Andrew is busy and someone else can pick it up?
It'd be nice to get this into v5.11

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DXUuo3OaDVOnFiczUTeyKt1moX7nQ%2BXEX_HiDpv2f3k8A%40mail.gmail.com.
