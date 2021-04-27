Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGV2UGCAMGQECFGA5MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D8E36CB4E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 20:51:07 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id o4-20020a0564024384b0290378d45ecf57sf25632163edc.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 11:51:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619549467; cv=pass;
        d=google.com; s=arc-20160816;
        b=v58jh+EbknzxCbQ1fDG6cRL6My9lJk7+EGq1PH5s1dC9d1fNkwPG5QgvpL7P9qZIp7
         u29ot9ZAM5NmT78/a99zPr2sMtMqDLcC4zbGBRcQfqEO3SrG1HeoJ98LTg+uQ9VMLSaj
         2Fi8VJ2q93hNY6ZEZiRoE82RfhCbFB79QnxFY5ZNcI4IznkpdmB6jAARa+qwbRAzxRTD
         dnGLDAGkM4uot+B8VzicTRrXUF+zcTYF1xvaYpk2/O5SK4a7+R93TmGCYGkC0ZI2TZ+8
         1r8GbHvqfD2/95WjWIteP4+/qFYb0phduhkNrOvT1Oxn4Oc//FSXqj4sgeR64Eplz8Vy
         VTzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aRegXDqQbZq6gRXYCk/DHUeBhS3KcrD1F+0KFX8Ag3I=;
        b=dbydWvLfbF+/5BMPPHz24acnENinp+/Rhc8G5gS1U0gGQCVjZTPzO1bxXmajU/2JcU
         e+/weI2hHkK88YbYAUmAHyLRM4HS1+di5Oi9AFbMoi4nogsdMfoVdC+60ucIqS6GEket
         4hB8WV2kzKBAUrFggBDrU/v8QN9ALyx1GfWUJKH2aVXAnaB0n/Uu+kTF7MVWvW2lIdhr
         UvwkxrJrd3b6dBU5WL058wRC3MJRu+sUhlsQ1mvGP/V8yHUo8Yj6iXsmC4dsIMFV36Y0
         BpKT8P1nGyOipG53is1C68hopdwLnjvMMn1Ia8pCqctg68O+WMLq1V1Y8LG3+CQx1CoR
         x22A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TBvf0xKS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aRegXDqQbZq6gRXYCk/DHUeBhS3KcrD1F+0KFX8Ag3I=;
        b=ki8skLxGp9gSnFee7op5oguawqIXzkjuS7OOOSpZ3Lvynog9po0MuMf3buJpr4cok3
         0/MfpSX4ZC0Dv+EMFFTABMbKZr3vqUghaEGQXkHZAsC0hCkeKJfYFvVeXplXdsh8XiDB
         JNJ9dBUUEv/WjnShv3tqN1NmtoLoyPxPCgP1PWwJ91OrFiLR4GxIUyEEleSIZuSPT0Gp
         ZtsJBWEO/VVx9EkoMYGijONUt9wThhsaj/CtCDrNfP2wHxE+LZQ1vd5Qysd6xezZxuRT
         qbCszRHFYh2ZiR7mPlR3kd87ONFGoqxUWSzmq+1TN0OVM8Vbi6enLJ4ygfCtXItWf8c8
         pK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aRegXDqQbZq6gRXYCk/DHUeBhS3KcrD1F+0KFX8Ag3I=;
        b=HsMH+xaPaFT51KmY4PJxU0dl2M3IgTc1Ak3kqdLGLFkCgO7lFwdOH4DrAZNu2ZLq7D
         KWWlciDPHS3ztj+OVmKKTj8CwtXatS7V6AUtcu2mRAeo8E4oWyPtmgg8MyuDCrfW9j/D
         HnWCTRLO+Y4JiLOePQgcGYAXMCzSOOZCFWxsojMWCDCYFgTBsbnIWFYN+MBy98Wu2YqE
         ZUgMccUEJTBHrHh4unqFJ3kFXOWr8bTtboPELeT0WD8V4LYymYXNuFP8GSizRp0s//nj
         t36dNk0a+/2QYe+U25tCdVml5PG9vf97YiVENycOO3DeEuFcZKvcxnvLiuyO9vHYVhht
         udlw==
X-Gm-Message-State: AOAM5320LCbS697IOHfqh9crQPFYpI/yibi5fOue9jDsqKAzu2jY21sk
	iweBZ1fzs4FbFsTJRIMobfg=
X-Google-Smtp-Source: ABdhPJwRJ0NZqrMOBtFl94Tz/NSip/0UKIPSePiFwKYSuXURLX1BSms51L9zCBCaeAtmrOMa7nWsDA==
X-Received: by 2002:a17:906:34da:: with SMTP id h26mr24285279ejb.496.1619549466989;
        Tue, 27 Apr 2021 11:51:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:97c9:: with SMTP id js9ls9601785ejc.10.gmail; Tue,
 27 Apr 2021 11:51:06 -0700 (PDT)
X-Received: by 2002:a17:906:3a45:: with SMTP id a5mr25566741ejf.288.1619549466087;
        Tue, 27 Apr 2021 11:51:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619549466; cv=none;
        d=google.com; s=arc-20160816;
        b=iuirEt5QjqKXJm6oQd9ndhbiyL3MjWja8ftUaMs4d6vAAazR7kQn8H5y0nL0dPEpJ7
         I4KzRa3EKzGy1zCCXbfEZ2jGSiI8gK7TCXzVqBCbFB/l6sRbG8QC7xLE3TpIHcv/k6Ew
         3CpI3WnKTAFGQavFl6QNzypv650MG6jc7XgKChGAh7gi86DfC/g2IKCO6spJsg0fW/Xi
         SlNXwwZCjk5l1M/D3dN/UZ/QJzYZzbMgCWfpwgpkOvBn564FWtw02PFxTOer9z++2HvZ
         L8RoRiuJlOIc1UIcbDyJ532/D2KXBvBttd7vkY2G96aNgqzFcznvUnS+OQ7zILcqs+zG
         +Azw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gog+9Z3fXL22LIPFv7bH+SyHlsPgqAEYM+x0G4DVbUk=;
        b=mCsY8jnWIj2g2UYO0I0sSLtdNV3SpkuACtEvdnh+NT4Pxoj9vwdWGL7yXr5KHteOqs
         gEIN5+uQ8cGWElwuKv3O3iJNY2dFwGBw+q0Gk16wpgDtqd3sWVxXjOdM6MLhTKjP5lHf
         piDwNeHDOoOV0ZOFjJqDZzX/qipIxL2etfRcb4pYI8YjiwWJt6U5Kr2Z5aP4j1nfDGly
         UTojuuhICFXTANT328WidRixF9JF6iqqd/5M5iQsHyx+AL3/vVI1A12EMLc3fTOOWiy4
         Quted6yyyo8W1TEb4lQtNaZJVt7quQr0aTKM8kVfooB2Bk1Z2PM7DjhA1OUCMPmJK5jX
         KByg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TBvf0xKS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id c11si367043edy.4.2021.04.27.11.51.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 11:51:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id o16so69361374ljp.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 11:51:06 -0700 (PDT)
X-Received: by 2002:a2e:6c12:: with SMTP id h18mr12473028ljc.116.1619549465409;
 Tue, 27 Apr 2021 11:51:05 -0700 (PDT)
MIME-Version: 1.0
References: <1619345553-29781-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1619345553-29781-1-git-send-email-yang.lee@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Apr 2021 11:50:53 -0700
Message-ID: <CAKwvOdkXxyyLSTAaMsyeJ3jxCeAGY=9DxLZNX4DcvF=fmkx7mg@mail.gmail.com>
Subject: Re: [PATCH] ASoC: q6dsp: q6afe: remove unneeded dead-store initialization
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Jaroslav Kysela <perex@perex.cz>, srinivas.kandagatla@linaro.org, bgoswami@codeaurora.org, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Takashi Iwai <tiwai@suse.com>, 
	Nathan Chancellor <nathan@kernel.org>, alsa-devel@alsa-project.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TBvf0xKS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

On Sun, Apr 25, 2021 at 3:12 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Variables 'wait' and 'port_id' are being initialized, however the
> values are never read and updated later on, hence the redundant
> initializations can be removed.
>
> Cleans up clang warnings:
> sound/soc/qcom/qdsp6/q6afe.c:933:21: warning: Value stored to 'wait'
> during its initialization is never read
> sound/soc/qcom/qdsp6/q6afe.c:1186:6: warning: Value stored to 'port_id'
> during its initialization is never read
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Thanks for the patch, but it looks like this has already been fixed in:
https://lore.kernel.org/alsa-devel/20210218222916.89809-5-pierre-louis.bossart@linux.intel.com/


> ---
>  sound/soc/qcom/qdsp6/q6afe.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
> index cad1cd1..442bf27 100644
> --- a/sound/soc/qcom/qdsp6/q6afe.c
> +++ b/sound/soc/qcom/qdsp6/q6afe.c
> @@ -930,7 +930,7 @@ int q6afe_get_port_id(int index)
>  static int afe_apr_send_pkt(struct q6afe *afe, struct apr_pkt *pkt,
>                             struct q6afe_port *port, uint32_t rsp_opcode)
>  {
> -       wait_queue_head_t *wait = &port->wait;
> +       wait_queue_head_t *wait;
>         struct aprv2_ibasic_rsp_result_t *result;
>         int ret;
>
> @@ -1183,7 +1183,7 @@ int q6afe_port_stop(struct q6afe_port *port)
>         struct afe_port_cmd_device_stop *stop;
>         struct q6afe *afe = port->afe;
>         struct apr_pkt *pkt;
> -       int port_id = port->id;
> +       int port_id;
>         int ret = 0;
>         int index, pkt_size;
>         void *p;
> --
> 1.8.3.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXxyyLSTAaMsyeJ3jxCeAGY%3D9DxLZNX4DcvF%3Dfmkx7mg%40mail.gmail.com.
