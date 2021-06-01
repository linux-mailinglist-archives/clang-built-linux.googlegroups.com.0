Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGER3KCQMGQEKFKFA7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ABB397AA0
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:20:56 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id n2-20020adfb7420000b029010e47b59f31sf5249656wre.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:20:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622575256; cv=pass;
        d=google.com; s=arc-20160816;
        b=xs23UlHxbAGPSFJvt35go6UwMp9a441tbHmD6NzxuhP10FM6yHSoIkL7aV+qh+Uzt0
         5TymG4ZN8Kl45Nnf96S6gdvQGZrcafMopiCGM1ef2noaibEbJVU02LCaidVWcp9wlL0j
         Q7yoGAwU/pcXw94msdbx0g82wJwODjoQUY4aszjh9m9STjfn8M7VM0mo1duXqHZUigF2
         rFr1rHo3NvkBGek3iFYSkJs+6CPKDhoXOOVXDRIBACnghRLgPrpfv3xeZCORBeT7RsIJ
         S1GsrLI9swJtPERuwEpEs+GsATCH0WO0TcxJE8OlwHQ5uQwSkfpVsEmidrB/JYHN8u6G
         wI1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1SgqFLpcCsf0B2QlT6bU5BJyvVc6mo+UYcMSqWPHf4g=;
        b=NAmTiDmsR9uMNYIYxwO5uqfBj1aQyTCSda+CiBiaaJvm+gQ5yU2Y/qBNkHsi/Yis2c
         Z8b+oVA246kMyN4hcJgHk+R20QQ+o5atZ2hBAOrRNj5n9J4cF9sppsPxMOB/KYwoA/cS
         WUzYj4an8Ix7YiJFuypw6Tv0Ff0lqG3JxbnX/bidnlZ5P1Rqd1SLOTLcukyM5vLPMf76
         Nhv6+8vxfk3tubn1JftpkCzBgiZOSTYado7DcRvLS1V0FK2hiIVDetcMYMsUSYn3JRGR
         0zDA4ANpWF82hM+wXb4QDTMAUK4M2CGrnNa7Y/5P+n+q5wdLQuSyEHH0yxPyUUslb9ir
         ttmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NxqHANsd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1SgqFLpcCsf0B2QlT6bU5BJyvVc6mo+UYcMSqWPHf4g=;
        b=kD9nVFJRrdAx8kyJImR/KbnFoLIIWLYq5lOvKYXAXUA6TpIrVBGaPJvVB1TewsRCyk
         QsYpcEUr06In2dfPEW/Ch0s5gqnKphNSC7huK9ZPxHjNWbkJWcv7PpRKsELbRSrZ92Y8
         NsPAWuZbjYJcci3YUbkfaO4MlTs0BO3vaH8952R2mns/K9Kg1RAztbvKCCLDMNd8nPE7
         Lic7iC/9mGH430M0Qg5vbCZ7DvW4xEoor/pq7rF56ozjGeDpjYJkrfZleEhcLYsO25Vr
         Hguhetbens6lhTlxAKxCekf4AB4ryuUm5k6n0KuSs1We/F2/cn2nXZdS6XaecB7clwq7
         NEOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1SgqFLpcCsf0B2QlT6bU5BJyvVc6mo+UYcMSqWPHf4g=;
        b=ZmguSjK/MwhAze35j4IW/NxTjQKnv4VuhGV3bWsPfP0UXNKjB+PVHe6lNV5QovrnsW
         LdGcLFB65UOyQ0AYxhpRszVjjVahMXjpjWnW7/Tv1mJCJMZeKGoJC7zMIIwWbrYhGmlv
         gQ8bziLb6MO4nDOilVo1HZqCFB6RslxhnCDxBB6dxWfBYQxGZHEOZTg3pRPUxJEuYK50
         KaBYIt+1VBCEQ/Lyip5fFch4fDTrDZExzlzlgDVw1k/2qGAM9krDDmXnFxlCMi88mdJF
         inG26JjuDf7PkPTj0/Sn67aaM8H2YVUl0jctOuxXzbzPpp1GeYJpOWl03KZPYaYBHben
         pBYQ==
X-Gm-Message-State: AOAM532EybghfX0qqgy8Fk6cv4F8sIIibLIgjwqhq0Y2ByqT7dBfMaP7
	lIWNbUyegbKmHO6UPG+OxR8=
X-Google-Smtp-Source: ABdhPJw0j5KC+Y0JSs8Mw3UmuDJjvvRV88qF9wlKBzEbCdE7arKcxQKHpz+Iz3SbxlT9vE/Av46pYQ==
X-Received: by 2002:a1c:6a09:: with SMTP id f9mr1372376wmc.91.1622575256602;
        Tue, 01 Jun 2021 12:20:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls2009543wmq.3.canary-gmail;
 Tue, 01 Jun 2021 12:20:55 -0700 (PDT)
X-Received: by 2002:a1c:1b93:: with SMTP id b141mr17111579wmb.8.1622575255779;
        Tue, 01 Jun 2021 12:20:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622575255; cv=none;
        d=google.com; s=arc-20160816;
        b=z5I1p1ggi7kEHt6OwAHy7jVyJLWGvdk37jHN8IYJV64KZMUVCG6xa5J0L3uY033742
         WUBogBuVd3oEnGrJPiiSY9rkj+oZUTQ4S9c/9KGvki+RCmYTlPFqf/pjoSkvHk5RS8K0
         eZEUAEsmcw8NzTIw1G8PUAzzOHKHaorQCac6RMbKl6RjAoYY5GSpSHxlC5/fx/1FaqFy
         rQiH+mZIilzvsvG52SNA7H2mgkogd3zGHyIBsAe4+Ccov2t9Eoy9gLe+hZeQYb1LbPA7
         EAcX1wKYuR+mLWXcApNzUjTyLcrUs/46QRAoNv6W2i/kNf4GsvxDz6ncE+0bAxU/HLNG
         jQrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4l0Qbrea+PxVgdT68iuGwF0mAxIyy2sZ0fOtF/mCAdE=;
        b=mEpDdKxdiAV1Vi19Dkeb98lkSDXrGkqHyiO2xu3Bu0hhZNVM8Fhnw0lfGmUIQz8IcB
         EJ56Ig+tVFWarwb49Uoo745BYyfgS/cWFsAsvGs8/TtNr1MVmxm3UpZFiUcFgDF1RUTu
         CIM6/XExa9cPiT03cnWZ5cEYkd6D0flbwmECyo/vGg+d8ZlFN7e9a5R0Zd+63nAVImrU
         53zULx8tidLJ7OpVKm95gEN9hfbbL/ymjMEWmAnaHQtnA60I2Yc16VAyLlCeRTE3ankA
         f6TFV3Fl1h2cjE8vNL0sRIYengohhLszYmtRSp1p91+V+aN+gwnYE0WObNlIwuq3ob5x
         DUpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NxqHANsd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id h7si23909wml.3.2021.06.01.12.20.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:20:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id w15so20740652ljo.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:20:55 -0700 (PDT)
X-Received: by 2002:a2e:b710:: with SMTP id j16mr22510652ljo.479.1622575255259;
 Tue, 01 Jun 2021 12:20:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210521011239.1332345-1-nathan@kernel.org> <20210521011239.1332345-4-nathan@kernel.org>
In-Reply-To: <20210521011239.1332345-4-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 12:20:43 -0700
Message-ID: <CAKwvOdn49Nm27rCyyTeGvz4qtL0uNp7ZW_AB_Asc1PdGW=xW7w@mail.gmail.com>
Subject: Re: [PATCH 3/3] hexagon: Select ARCH_WANT_LD_ORPHAN_WARN
To: Nathan Chancellor <nathan@kernel.org>
Cc: Brian Cain <bcain@codeaurora.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NxqHANsd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Thu, May 20, 2021 at 6:13 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Now that we handle all of the sections in a Hexagon defconfig, select
> ARCH_WANT_LD_ORPHAN_WARN so that unhandled sections are warned about by
> default.

Great to see another arch using this build-safety feature!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/hexagon/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/hexagon/Kconfig b/arch/hexagon/Kconfig
> index 44a409967af1..e5a852080730 100644
> --- a/arch/hexagon/Kconfig
> +++ b/arch/hexagon/Kconfig
> @@ -30,6 +30,7 @@ config HEXAGON
>         select MODULES_USE_ELF_RELA
>         select GENERIC_CPU_DEVICES
>         select SET_FS
> +       select ARCH_WANT_LD_ORPHAN_WARN
>         help
>           Qualcomm Hexagon is a processor architecture designed for high
>           performance and low power across a wide variety of applications.
> --
> 2.32.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn49Nm27rCyyTeGvz4qtL0uNp7ZW_AB_Asc1PdGW%3DxW7w%40mail.gmail.com.
