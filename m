Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBLX6T2EQMGQE6IJFPRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EC53F8BB2
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 18:20:10 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id h13-20020a170902f54d00b00134c35c8d05sf1237980plf.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 09:20:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629994799; cv=pass;
        d=google.com; s=arc-20160816;
        b=thK2P87o6SkgXDWzuTIjziOE4NBcp4mysmtUeJDM54QC29rk0GfwntSe02Yg6EHk5D
         v0LHThWKkh2NXMTzbPe5oIanem9LndKine4CVlCPdhHqWAbNvMdYdWzUjTNIvFngOkrN
         PFpJIbKE0A25mhZ41LmdNB1tS/3VzBQggc3bBbiScekVhjvSqX+ESgKza31Osqll52C8
         YDxKj2VAHtUpkWTmFh1DxipF+FBp0wqvc3arEl3TZ7xJjp5FBR6oZQt2y35yIKtl2ndd
         g0YCor5u2puriqXPwCCs6t4IgEr5n9u6PbSNnptnkNcjaXg0b1Nb9SQtJ/EBVezgIxSJ
         4J+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2efSqQGrPoTpqOzQe1aTeUnXKQf3o8ceabEKuNpslfk=;
        b=JyxkRgJYgxpn/poe1pGqJ2obXGpgJUJkG7vdHAY0hCoEBmFttpQiiOLRvRtyCewyHU
         Wlp0EhlKOgac/pJ71ToEZWCXkqq/4o8Ok5NL7YpuAy3dCDiZU8WKIBCCTEn5PyALLIO3
         PX545S8Y0gOR5eOGfFZcXx4tGzizUFL1xGOTKACj8dOH5T+JxPtZaouRrZIJTQvdHp/w
         BZfBBqJEISQ+5XYNDcFXFDmmX4w1LcU0enDpSBShyRGLQg8sYCHIA6UQKztkqgIqFxhs
         2DVzsDHhySqA12gUV9PpQj4I85xx7AUIv9zbU9SDHzNW5eoKj/mE2A0N2Ma4d+STsg0U
         xNKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=REpM3LMb;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2efSqQGrPoTpqOzQe1aTeUnXKQf3o8ceabEKuNpslfk=;
        b=ReDrCEhSGec/Z8BIX1JCG3BoyuUgMh5vXn1iKNgHg7S5mSbkRr3rCQlhtaFwgdwuMD
         7IgqQPiYBAQbI+dGo1bSfygdFjxDMnmXe5vhQdy9KOBHn9TlOtZEYfxy5R4QY+xkrNJS
         p0IpoOJQr7T/BRJLRhzYcZnrhpNb+ah9ZbvSjPgKr3SKyhXktqplL8CMp3CfKUXhaIm9
         NVajPN18XBjSo2cmpfFvTiOg2BF03huKIV79AiWpHjKPgWfI9Au0KaHZSVoVi7fkBLDf
         yoTbJWjT/PywpwB8hWwHhAegIgtVeOEH9FElhd1KaHVcVdWdj5EWy50oHuG2q8iugyCv
         lVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2efSqQGrPoTpqOzQe1aTeUnXKQf3o8ceabEKuNpslfk=;
        b=uZzrVzKUudpWOGAK4Ir4fczmklvf2RuyEZTIOgWrFznrLzsZQaiXo6MBW9NJo0hcQP
         E8EM7MyKTS7RFJwxbobsbs3+Yu7348ixHevyq9kQYNEDXUJuxeJpYJPBkG9I31KotncB
         pgylbtnUfwfOYcM76FeBtpjBpMQaEChJzNyD7+wvmOTW7LdFP8fnhpOemyd2PT22CTAo
         lHQPvoiomQmKpEfMw9w5G8Hj/rq9swohoZVkSsGYcQNfcwu4ib+8DW1mpqOt+0wnBGYo
         naG+oR1xZlg5MqUMoWL0rv1cjnn4FtqXK9gOAPzVTJjMsnjhyovtiQDv07PtRd1LVQRQ
         VWrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PLUBNS7ZIYWWeFtB0kjoSZVNeiwHxQWSUIHgZIbTHhhYAeJa0
	IDIMipm6TgVPA9e6cipXcSU=
X-Google-Smtp-Source: ABdhPJzKIc/mGgDjnOXc+gfsRmjv8S1zz7Hif8QcASL3fp3KojFgebL5guyH4P4+Aeh2CRNCWkC//A==
X-Received: by 2002:a17:902:bf4c:b0:137:b460:1349 with SMTP id u12-20020a170902bf4c00b00137b4601349mr4361488pls.23.1629994798925;
        Thu, 26 Aug 2021 09:19:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4c92:: with SMTP id my18ls631534pjb.3.gmail; Thu, 26
 Aug 2021 09:19:58 -0700 (PDT)
X-Received: by 2002:a17:902:8d84:b0:12d:da0a:6970 with SMTP id v4-20020a1709028d8400b0012dda0a6970mr4452163plo.54.1629994798283;
        Thu, 26 Aug 2021 09:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629994798; cv=none;
        d=google.com; s=arc-20160816;
        b=GTFFfNpDMx1Dmk7prfPLrIBzgpfvpKAOs98FS0bViJB8gf7V3B71g0Ovy+shYcx/E4
         S7EVgyUgbm69issYeNip9SY/7Evv+evSpfIh3pIlVIpnp5z+pJ8gG1Crqt5xSuapY6my
         blhZ4qGO0CX7kVDZ9kasPwonPBmtyGaTm7l/ZKnvr/NvWGRkDe3ubn82vfwtQZY6x//k
         fkttBsVsSC9qK4pZLCE9OujP7rS4lwTxa/Yz0S4PFC/kxnxTE94nhyMItJ3eyLEI2xzc
         8dPhTuPjIJ5/O5jQH0IV2XcXU3aPvTllcQZOzSAUG09FxB9YEstozdG42Uiua9qMBODA
         d85g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EUk9NbaQrBGgCHXxaScTJSpGIkLEuFKO3aGI4etH/+I=;
        b=JiY3Lg6PeaVqWrgFNxaGd9TSTKh+PVlQwZE2cSQp203Hv3e/6FeT8ShiWw8VvF+Okg
         3mF0vzy56tqWeqI2W4ueHBIzLhpzuG/m5jif4DjjqYng62o9S32w4EDbFQjPgqIS0bR9
         7ITkrAqEw+5z0ETaa+LxEdd3eCgVQId85a0XAqoGdi5x+yuS6sYQ+1z4nPGDDcFG7UMK
         0d2Zj0RWLT3x+qvtJy7SSg2dkdwHWqKDmjblfmiBvTszQupNdM6wrwq9ESGDfFF0mcrc
         NmxFk+4ihCmxFFkcmk5Rj/U7wRO7Ht4j3YHRNZQWQy74aRPU6A0lxmK8EMlZvjayyUk2
         RfwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=REpM3LMb;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id d1si358936pjz.2.2021.08.26.09.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 09:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Received: by mail-il1-x12a.google.com with SMTP id i13so3867803ilm.4
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 09:19:58 -0700 (PDT)
X-Received: by 2002:a92:d650:: with SMTP id x16mr3262718ilp.253.1629994797897;
        Thu, 26 Aug 2021 09:19:57 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com. [209.85.166.52])
        by smtp.gmail.com with ESMTPSA id r18sm1813458ioa.13.2021.08.26.09.19.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 09:19:57 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id e186so4430839iof.12
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 09:19:56 -0700 (PDT)
X-Received: by 2002:a02:644:: with SMTP id 65mr4176713jav.84.1629994796361;
 Thu, 26 Aug 2021 09:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210825222514.2107728-1-jiancai@google.com>
In-Reply-To: <20210825222514.2107728-1-jiancai@google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 26 Aug 2021 09:19:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VAkWz0QSN7GivNrkv9uv3JKisush4C+Tb-PMpNokt8Wg@mail.gmail.com>
Message-ID: <CAD=FV=VAkWz0QSN7GivNrkv9uv3JKisush4C+Tb-PMpNokt8Wg@mail.gmail.com>
Subject: Re: [PATCH] coresight: syscfg: fix compiler warnings
To: Jian Cai <jiancai@google.com>
Cc: Mike Leach <mike.leach@linaro.org>, Matthias Kaehlcke <mka@chromium.org>, 
	Guenter Roeck <linux@roeck-us.net>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Leo Yan <leo.yan@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=REpM3LMb;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::12a
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

On Wed, Aug 25, 2021 at 3:25 PM Jian Cai <jiancai@google.com> wrote:
>
> This fixes warnings with -Wimplicit-function-declaration, e.g.
>
> ^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresight/coresight-syscfg.c:455:15: ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]^[[0m
>         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev), GFP_KERNEL);
> ^[[0;1;32m                     ^
>
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
>  1 file changed, 1 insertion(+)

Can you figure out which patch introduced these warnings and add a "Fixes" tag?

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DVAkWz0QSN7GivNrkv9uv3JKisush4C%2BTb-PMpNokt8Wg%40mail.gmail.com.
