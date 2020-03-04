Return-Path: <clang-built-linux+bncBDLPBG4DUEARBVOD77ZAKGQENM5LHFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF6C179673
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 18:13:59 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id k22sf1258549oic.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Mar 2020 09:13:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583342037; cv=pass;
        d=google.com; s=arc-20160816;
        b=upjC95QFwKxTQridVx8MtdDQ8mhm4y+KlO9R2xwjJ8QVmudUbyAqffTEjuD+8ShztX
         sjMQAQdXRfW+w4ZAVI8+nX/sNAfB57Abt4bUSwVhezTe4UNXGbFSAzVa9Kf7t45K0ApL
         r4U77IHc3N23NrRN6/CkBXShFn178JzgBW0NnSGQaXGimaQUbcWEbIS5yt+uCaO3Vuo/
         lmRLoLvpcJF2YTaoRQhl41mE9gwRqZOLV4EpfgCuNXP6h7DSu6gpkBTVWXqQQpofxqtv
         JV0jXX7Iu/miT4q13zI2E1iB6IH79A8zm+oKQqk2wzl2VIFsMx9ZGVGBtGb1L/Dis6qE
         BJJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=MuxyBJ/U1RpXDw5wZrvVDKgKSH8C7VBUScp3w4xBAjk=;
        b=HSHnBAQgqgapA/UpdyIz8IU3r6VkXuSgOXlff7uSJUL+yBUF/G96VxQMeiEfOdxXpH
         E0TsYalxjllDdi9EYwQh0JNmfRzrbj3wemqlGMBRjqDCdGKSlDdo/WPInX1X6M0wtRcw
         pDA2yaxdGeO5gXfSluJRZPmTfjC4k+FimSaoGnnumJ8jUQkdJ+l7SHXqMT4xx/oLfag2
         hCUutQItiJmDMDTTiS5cddsm3R5eu8MdHyVAh50qMNZUmUswE0E3qVrlmA2108VZ4HXR
         hU0IXYzPuNTneGjjGMqP+jAjRCjAAb3/LOeonRm3PkqXTwDpmTvAPQO+TqMzKOmsQfLw
         C2Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QYElvh60;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MuxyBJ/U1RpXDw5wZrvVDKgKSH8C7VBUScp3w4xBAjk=;
        b=GASv2a35SZi/jb1feJWoTyH/LQa2YKbkIBDumu+/iHF5RuFBdE6J1pySJbJjMC2CFC
         7D2qBSByWyYJpJej6PlN0r7j9UzkfqxnRWNznEJJSXit5edQzzRRz7NXMmRRZd4CZKJW
         2P5V3R/JNi54hd7VmuarAU/eKmSV1VGZzVtjSQy587ERnTJUgQQ588U54inMUlxmvjYA
         T3v2a2eVIh2nc8bxXaRoZbBYetyaDXu9p9FLrmoMH0lOKf4h+KTywBuzIyaEsyZIU/W3
         v6rv9WmuRKDTYRqhXVGmqu3ShHonefVdzw+Vp77Llt8ZT2J9dBvqpMphBKmKoGB77g5K
         wkRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MuxyBJ/U1RpXDw5wZrvVDKgKSH8C7VBUScp3w4xBAjk=;
        b=FApQO1qrscz8wzJ8MLI0AVBxthjtAvWDk6lmmHs6TZ+vMP2ObLcaffLrOZlUKG0Cas
         sAAXGLHovvJlnqmm3w+Yd38aDY+mjHT42ejfgliY4srZ5NtSckZijXDfSB+VCLb7r3QV
         42iV5Qv1OCdSwtwSyx0sfZ625PyXM6V7hGI+JNsTjc1DRtUPTbrpNpM0EaOTP632dmGB
         RQaZPxJaqTfytKaiRPbViStn7fF/rgsjmjA1naAZtZQUPFkmWhIBF2e9LAKzKO4eFWHg
         uditx/4Z5S0G6mrCNEThjGOEziDonxpDLC55uio2Dfgasor2Vbv27ALaQ/4ChAXoGbx6
         /jjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1QgQNlvzmMn4omFUhL1vRzE63h5AB3iBWy31+uYna7uiZf9nxn
	pQx1fsaSL5aS0Wvs9tuz+Sc=
X-Google-Smtp-Source: ADFU+vtKGAek20iClrYfP624PdLnI15pNEjW4xrp/wvEpjswBPGSsWcXeiyDvb8ph/17kwMAexUJYA==
X-Received: by 2002:a9d:6544:: with SMTP id q4mr3028615otl.269.1583342037532;
        Wed, 04 Mar 2020 09:13:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f5d4:: with SMTP id t203ls803724oih.11.gmail; Wed, 04
 Mar 2020 09:13:57 -0800 (PST)
X-Received: by 2002:aca:af49:: with SMTP id y70mr2543038oie.92.1583342037159;
        Wed, 04 Mar 2020 09:13:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583342037; cv=none;
        d=google.com; s=arc-20160816;
        b=iGYoRYTctQOI+0r6BqN8RLQhqu/Af0N+ppATQdb2p65YVF88VusKU14s9stnQUlzO1
         t4KnZmUCiiNH4utScmjHnKe0he1+I+dswjfdWK7uHgvT8WMsW2AmAjdk2OoLhdrsg/41
         T6q71ERc0K18EvkL7VwYkksnPID2o+7b8GCKBVYa0vM7wO6ZetAVaQe5cc94uzu936GI
         5Q5fMd5hl7iQIqBHLoUJEp00jpGLZmjcjh3fvCoPiWr1sUi2TVT17SmNtkE9YBetv9J2
         oreLH/r2woFKbuG8m6FzvD8wxrD//fevTELqp4PnWLfgX+NPTADwFXm/LGQc+7uvcXXO
         qWcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4gG3qMsij+Zo/aEE0RJ5aXLnI0RJBhpPpMw/2lBOTbU=;
        b=rU8dogIWwO4SpTfMcYm7uzAaxbIZCpG7rl1PuD3yYoe9lCLO90EkQr11N+bysTuB6+
         HiEBC35xFRD8tWuv/Mjlg4UkliTGX8BVgsX6HtIf2lr5aeKXJ8AC3L2jRC1a+erHjAga
         4wD6QsklkOWW8fgQBSpushLRB9xnFHwYUpzARNwyjW5J3UKCVbhlODQN0EOB/7SOVFGK
         9JHVstilWWjS1GUfx1i85RjWFDmK80h/FpJ6BA/e4jf0OQYOJPZaTMceGkkV2jwTivZd
         k6QihgVKXe0Pqf+U3AdVBTA7mkS6zLYELGEbYgqcraMnfeQWUzr3V/d+JOyZJqMTMMRp
         hohQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QYElvh60;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id m24si76197otj.3.2020.03.04.09.13.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2020 09:13:57 -0800 (PST)
Received-SPF: pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id d15so3252736iog.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Mar 2020 09:13:57 -0800 (PST)
X-Received: by 2002:a6b:8b8c:: with SMTP id n134mr2899306iod.58.1583342036746;
 Wed, 04 Mar 2020 09:13:56 -0800 (PST)
MIME-Version: 1.0
References: <20200302213402.9650-1-natechancellor@gmail.com>
In-Reply-To: <20200302213402.9650-1-natechancellor@gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 4 Mar 2020 10:13:45 -0700
Message-ID: <CANLsYkz_kh2BWoVy-YervDTRWUT+p8M+-_vUrsu--WF3fjDBPQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Remove unnecessary NULL check in cti_sig_type_name
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mathieu.poirier@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QYElvh60;       spf=pass
 (google.com: domain of mathieu.poirier@linaro.org designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 2 Mar 2020 at 14:34, Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
> address of array 'grp->sig_types' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (grp->sig_types) {
>         ~~  ~~~~~^~~~~~~~~
> 1 warning generated.
>
> sig_types is at the end of a struct so it cannot be NULL.
>
> Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/914
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index abb7f492c2cb..214d6552b494 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
>         int idx = 0;
>         struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
>
> -       if (grp->sig_types) {
> -               if (used_count < grp->nr_sigs)
> -                       idx = grp->sig_types[used_count];
> -       }
> +       if (used_count < grp->nr_sigs)
> +               idx = grp->sig_types[used_count];
>         return sig_type_names[idx];
>  }

Applied - thanks,
Mathieu

>
> --
> 2.25.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANLsYkz_kh2BWoVy-YervDTRWUT%2Bp8M%2B-_vUrsu--WF3fjDBPQ%40mail.gmail.com.
