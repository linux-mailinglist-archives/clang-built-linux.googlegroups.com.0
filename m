Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBPFX47UQKGQEGQV5HTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5461175449
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 18:41:33 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id b195sf37141474ywa.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 09:41:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564072892; cv=pass;
        d=google.com; s=arc-20160816;
        b=iF/6PUxIQ6pjrBIzOiGYTLUm/hSuSQ2MDzMVXk/pn0OhDx1KihJTDE+JQSv/CtdbP/
         iaQpimL1D3Rthzv4fpo0bSkuIlNI4cLF5MLxKBVXDMlYaJctCGksPr2nUKdi9tc1jj8U
         56DQv9/H5gWMnIp4OgtHnZVggKUkbt/xdpQvWkdZui/ysC0BOmSIe8+7imJKZK5qHsoO
         2FGYFVItHFbLXE7jX1koQVG8lHDnMTD0VYwLOYAWk6sxckHAumNzCKJBUsmQ76qPgIA5
         6Cb7THvku6tP81cCdrc5coEpfWQ7hkiA7OnobJR1Fifw1Bv2d4usGtgTS3Fx/vcOvbOW
         Serw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=j2Au60f98Pb3jdFfob1L7iwiLKvd9Fq+dU2rKTwD5TA=;
        b=PWxej6dQZB+DfKzU4Qnu4eJyTsDKLXKnvnokKhttjAktNMJhcpM1viqgWSP5zchRMR
         e5VXpzPdWcvDBrbegs5ayoIOln0jeDmcOBq0wd3ZRWdKM6HOD04AxyxXsQysWKiDCWiK
         COOkAUv3aLBJp28VTBzzXo5xITgTQ9Pd3n4FzZbHHTHRriYj0jVtMYdmKh1vF14jVA15
         X2CxZ+fPEbvQ45BiJkkL70NyTlY+RMJLbbqga+lYobmTbJXP8aEg4bUru2uaTt0MEHJQ
         v5Ehw10JYLZlhYeM6Bas+K+069Pz2acUK1FKM38ycAsWgueadnIVe4iZ9XFo8LJBECBX
         Zk2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VDI0sPuH;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j2Au60f98Pb3jdFfob1L7iwiLKvd9Fq+dU2rKTwD5TA=;
        b=hJbrgbaT/N7x5xZvm6iBB2u7oFMW97oVpklvPfbUor9HXPOfLeXFGjvgndpu2AP/B6
         +KZD7YqVmfaTIXXBvK0yD8qSkxOEf6oBM5IiAd02nhBwSHfq1DXywMjTh6LUPm8rHXy5
         C0D6SQ6iIO1sG9p0/TPrtSOHFBALk7k3unMxnQPYtaSZ0fQcih+H+6JM+QInSdvYLY4d
         X2XZ/OMlmdk1rRvgro1CygP7P07+UTYGS5Ii4lswUiz/kSK9YBRH4U0q27sGYILbCclk
         xeUhxO6dVrpP+MHEqLvFx0Wz6Kq6Kr6ILooWLo6Ds3pHOImpmA4Lf5qY8ysqZm6WVl2d
         vBQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j2Au60f98Pb3jdFfob1L7iwiLKvd9Fq+dU2rKTwD5TA=;
        b=h0DeICE75FN55RHTY3cENV4RQY+eaoeP1PdDgeNAN4tu15xLlVgx0KnOkdnnKYCg3z
         PC1wC/iNu9ox6CoUKQ2di5I5yXiBTXjWfUyR+znVFSSHe4O3HmFgNZMd1rswSYSUSScQ
         fUSgJXRip0Qfn0y8U7wQnLkqhpTl9qrdAli4n0cmhM+oHZKoSw7gMXyAJrl2a4rls8zA
         2cUmN4SVgaHEjrQsa5F3GXr1DtFME5sf3sz5dnHzUZw2VgRlAeK+a8/BYe3dq9v8sTBO
         /voulJl0joS72HHcbGVYX1xs7vj2OIws4x4EsL8ilAimuv6cB98Cbj5i3MfZ7eOePwhS
         zKDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9hkShotz1S1ry1t1h0LTxfFuBLqqGP9oTdAHD4Rq/+YqvdB3L
	fRx/okGgv0DdNCjCB/jg66M=
X-Google-Smtp-Source: APXvYqwI7FLMJ+SFdEU96QaWePTTxmqG6sIseF2QtUDvcr1tPeU3KuAVi/cordduZ2PNTHFTQ1eRmw==
X-Received: by 2002:a25:870d:: with SMTP id a13mr51440793ybl.347.1564072892357;
        Thu, 25 Jul 2019 09:41:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9b0d:: with SMTP id s13ls6808559ywg.4.gmail; Thu, 25 Jul
 2019 09:41:32 -0700 (PDT)
X-Received: by 2002:a81:348:: with SMTP id 69mr57503559ywd.384.1564072892031;
        Thu, 25 Jul 2019 09:41:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564072892; cv=none;
        d=google.com; s=arc-20160816;
        b=YATZQTyonp72nz9sk/7373v3n6Q6PuM5ByQGLL9xWJY8PwBg91Uv7Ba6HFB13rYxj7
         JCSnpX059czLGYb5WzHRnpvZo9ErMWNiAVwD3GpOj6NyYDAf+7p0BSze/YVPfBLQAdF0
         rGEM9q7MqcBYE1QzlB6pr4ldf56xVi19jcrAFtvc6uqWUfhJvSH9wUFo5yvPGo2SF6d9
         d9SDyMaoLW9eHcW4kip7ImB5Wg5Jq1uAhUETLVRspMLmTNNs6J4ScyWZ8sLZfXyoEwWb
         +v+18AXlKLAFXWkt/LDiCYJkUUIdpf16hmV3hFvCyeWYjt6lg0TpKz2JhM3NHIgH69Cn
         AKQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0jYRQRolIOxef42RRXDE4CTbs3UanGuMByQk3s/piz4=;
        b=SLjrsgFgEZsCY5hxR/kOpsTTcvTHqpMXEXOp4Yvx+hNBWNsmxR9EMn2c5dGBtaIaAY
         r9tdQXxcbaOToACCJfmnQ87dSHkk3L1c8h7SgoSC3OthT4onm4DteaBtuWAPTqvoov54
         hdivotht6IvhwYBiotCFhjXd2DfGrHKsTIZHP854nHPuFgiOir2nFZ5+6+q1AUJbronJ
         CqoIJeN9TXY4pmhK5K6ebOebZxura6Nx2yvRM0VkF6AYsjFe7wLY1j8rnlRTq8oQdXMS
         xeGtuXGJDFaRH9YTW1cMCQ4C2V7xi49+KH5Pt3ZNpPcARFakXXwNsviQ5BABSFpEOKon
         F/bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VDI0sPuH;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id v127si2324282ywv.2.2019.07.25.09.41.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 09:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id z3so98678591iog.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 09:41:32 -0700 (PDT)
X-Received: by 2002:a6b:6b02:: with SMTP id g2mr13275381ioc.13.1564072891434;
        Thu, 25 Jul 2019 09:41:31 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id b3sm42600979iot.23.2019.07.25.09.41.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 09:41:30 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id z3so98678395iog.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 09:41:30 -0700 (PDT)
X-Received: by 2002:a5d:885a:: with SMTP id t26mr29560419ios.218.1564072889706;
 Thu, 25 Jul 2019 09:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190725154730.80169-1-swboyd@chromium.org>
In-Reply-To: <20190725154730.80169-1-swboyd@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 25 Jul 2019 09:41:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UZQEqNyJ_3Corx0iro-OB5E==d8qZCxgrMvvKon4yAxw@mail.gmail.com>
Message-ID: <CAD=FV=UZQEqNyJ_3Corx0iro-OB5E==d8qZCxgrMvvKon4yAxw@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Check for unknown options with cc-option usage
 in Kconfig and clang
To: Stephen Boyd <swboyd@chromium.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Peter Smith <peter.smith@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VDI0sPuH;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::d44
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

On Thu, Jul 25, 2019 at 8:47 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> If the particular version of clang a user has doesn't enable
> -Werror=unknown-warning-option by default, even though it is the
> default[1], then make sure to pass the option to the Kconfig cc-option
> command so that testing options from Kconfig files works properly.
> Otherwise, depending on the default values setup in the clang toolchain
> we will silently assume options such as -Wmaybe-uninitialized are
> supported by clang, when they really aren't.
>
> A compilation issue only started happening for me once commit
> 589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
> CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
> compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
> leads kbuild to try and test for the existence of the
> -Wmaybe-uninitialized flag with the cc-option command in
> scripts/Kconfig.include, and it doesn't see an error returned from the
> option test so it sets the config value to Y. Then the Makefile tries to
> pass the unknown option on the command line and
> -Werror=unknown-warning-option catches the invalid option and breaks the
> build. Before commit 589834b3a009 ("kbuild: Add
> -Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
> but any cc-option test of a warning option in Kconfig files silently
> evaluates to true, even if the warning option flag isn't supported on
> clang.
>
> Note: This doesn't change cc-option usages in Makefiles because those
> use a different rule that includes KBUILD_CFLAGS by default (see the
> __cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
> variable already has the -Werror=unknown-warning-option flag set. Thanks
> to Doug for pointing out the different rule.
>
> [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> Cc: Peter Smith <peter.smith@linaro.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Fixes: 589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
CLANG_FLAGS")
Reviewed-by: Douglas Anderson <dianders@chromium.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DUZQEqNyJ_3Corx0iro-OB5E%3D%3Dd8qZCxgrMvvKon4yAxw%40mail.gmail.com.
