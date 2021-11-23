Return-Path: <clang-built-linux+bncBCQZJVV3RQNBB4GU6OGAMGQE3RG2SVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id D76AF45A38D
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 14:19:45 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id p7-20020a05622a00c700b002b2f6944e7dsf13093518qtw.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 05:19:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637673585; cv=pass;
        d=google.com; s=arc-20160816;
        b=b3P1w4ZmAP8psvVuVRLkLXniST5Z/GHZoCfaMKeRsfLvV+8QNEjF++Qi9a/bDdTvaw
         opGe6rLLsZQmMnYUXoz6dpaO3llPiz37u7D8jDQzga9yjLKysOCn86flucoGFZpormPa
         PK0pR0naGeYk08FHfLNbwcqqv9EubEvj8ZYGOG+YzeElaMeA5+RWh9rMd62gUsYLXMQB
         2i/Zi0sLxZb38cJsb15kFlPy4CxtO9myhzvOD3lGON2asqh24nNmqIZSfTVNKqqGtG1I
         opVgrfVXsnyfmLmy1eJpUh43TBazB6+0e4W0N/ayKosFerJJqLXflM2vMcqFw1YJXdQ5
         GLvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4RbkbW/yIiOdYDX55Q3A/fnjMh/bCMzErEOR+hPR4Zc=;
        b=AaSBbAa7Oyz8JC+FSrygaN+brxUp1F7CpnjGYnOFBFvXv2AWtCYipvNhqWCZVWII0a
         QZUiwvesJZFVmNPGj6MK0r/8J+5524/ZB9AAYKJGK2dbGcgfOhTT1w6Mso9kA7NxA2ZA
         8IyFPTCW5it5UzSyIvNlvlhltfzpbaKRDcnv8nx5bByIBgQ2CaERx1CelVI4uSdxmvbw
         i5DszmWYsAwYHiYM+NU8xNu3o3zignFr40X2QR8n34kTXtVPD48ZYsIYw2nSBwWzkW9P
         a8Wax5k76OGIH8Q5/XBS27zWpZtYb+xz3aBIu+vcln+o4oTP8+nFN1nJrq5rPOWOQ95q
         u6OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.161.54 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4RbkbW/yIiOdYDX55Q3A/fnjMh/bCMzErEOR+hPR4Zc=;
        b=D7hF57pqn9Z82TXtZjZKvbI4DhptGS+8TiEJe0kRfBpieMeDHzcOqH18kfyV0gnwBq
         /d59+p/+aKZNngOtCFOD/QOgSFTcaCSQsxksCNvtPSvhsSnwDCXduTt4MRBfMmqHKviq
         RoGu4e6Q1XBnAGTw4k7lJv0J3JiCGRGZU9PoHOVh3IUGzyXwhC3OXz529YCSOQAUt3Dj
         gaKVZXoTXgiQaOwDMFPvfRLsPB5l0G7sDPVQ959XI2uGKG7n7UmTqzt3QXZgESwqnj0L
         AHrRAJJQZ/cs5DiXm49SuodwnR2F4wmZcX9bezp2XEqfAlKuk4nK0UwncOGQUr19+43d
         R51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4RbkbW/yIiOdYDX55Q3A/fnjMh/bCMzErEOR+hPR4Zc=;
        b=W8roheDYEy07R6h0+gvHPco+smCrqG7H/XZZ5i1NKI0oFWj+89rTgOyD4jhn5ySGc4
         je7/IGh+IVMERrFR3SwO8ACJdPWMc9vriWCtRH1RA8dLRvvl85zCEbCVTwlE2OmpJ2S/
         fzRYutjqB7+lzeCXUoNfBnR65/AzLWed36QWfQd5XV1hETxGdjvhpHbb4o5pH7w6vhnB
         EL/c+zmTOxvfYTffPa6QB/wfhOkH87R64LBtyU7s5BZxe3wp1Y8PZNFZauyxpDq+BJ17
         cDIeHVm1zh9GV4e8lCe/fPf4FbWg0NhjmFF7Lg6D7sRYcDccGEieNFGljnGGSuclAtYf
         vVyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qq5Bn817CJxST7YuQvwg1R8bTL+E83lyQk9giY+wYHIqz8Mcz
	4XSUOTobJm37U+lcxngCh9c=
X-Google-Smtp-Source: ABdhPJwPMQ5K2ZCjbPTAxmj9HQL9xUBHa50r0GxRnpGPjD0hcWoFVNNO14yZT+1XXqKJELlzP2zvGw==
X-Received: by 2002:ac8:5acf:: with SMTP id d15mr6244732qtd.5.1637673584731;
        Tue, 23 Nov 2021 05:19:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5746:: with SMTP id 6ls5475760qtx.9.gmail; Tue, 23 Nov
 2021 05:19:44 -0800 (PST)
X-Received: by 2002:a05:622a:2d1:: with SMTP id a17mr6187799qtx.130.1637673584252;
        Tue, 23 Nov 2021 05:19:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637673584; cv=none;
        d=google.com; s=arc-20160816;
        b=yoaQJkrkvj5or0ToBfYKdIEpnnFFvjBfHPhea2G8+e4er8XY5xOvQlDPXm5JcvLjpA
         2x4tT1ohOvAZg37yGKpJx1yPpCU6TWzMSMtmlERfuuWdib1cgMqyBz3iXdO4G5FfNnVv
         yYHbzF3FLp+LUIeVL+u89oYozWKas701R7VS4xHgt8ZHCmUxOJcEUeUMp4aaSDg0RCGK
         CHfE8nwHIza7kGAxLabW6ihZvcKKLJUeYQ4ZMKqLyjqhFP9TZgChRE3jVvmnKs6GgkzD
         0Fz2AVPlPGWYuHNMhfTVp+1uAIYczd4XwEzB9h0evSAk3nQ4cLebLUg/beZ2pUut1ij4
         su4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=sxbm5nZuxDktECFOUcgXGTkmQEJlkXm+UQAvKfd0Kcw=;
        b=WqRILl7I5tGaX2ElGzHD78rmmzsWkygOKZfnCwrcfRgrgs1pb/Z4duCMk1vWVbT/cP
         LAb+DsDNAdaq0BBnsCl08GpYhnAhvallnhCYdiNlfxnnjsBMbFb2rW+4DWlbYm1hctHd
         vCvpgf/w/uWtjgtTDT0YouyeKfyIbdPQNCSZiau5pCgS5tYvepsflI6VSMmVMVIMvUPz
         KfFpRBNj0FvOKLilsj4Azm3vDhDIGo19xcfqfi4VYEoi5WQ02MrIHdp4HvGz7QpJANC6
         Bjg44XQD4AKDIHjxXWgffVjteJ0uikjS2suScDccsPsxYkL5uo7LMqumdzBOiljQ5aM4
         Tofg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.161.54 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com. [209.85.161.54])
        by gmr-mx.google.com with ESMTPS id i6si283708qko.3.2021.11.23.05.19.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Nov 2021 05:19:44 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.161.54 as permitted sender) client-ip=209.85.161.54;
Received: by mail-oo1-f54.google.com with SMTP id x1-20020a4aea01000000b002c296d82604so7458096ood.9
        for <clang-built-linux@googlegroups.com>; Tue, 23 Nov 2021 05:19:44 -0800 (PST)
X-Received: by 2002:a4a:1d82:: with SMTP id 124mr2868847oog.91.1637673583839;
 Tue, 23 Nov 2021 05:19:43 -0800 (PST)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-13-keescook@chromium.org>
In-Reply-To: <20210818060533.3569517-13-keescook@chromium.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 23 Nov 2021 14:19:25 +0100
Message-ID: <CAJZ5v0iS3qMgdab1S-NzGfeLLXV=S6p5Qx8AaqJ50rsUngS=LA@mail.gmail.com>
Subject: Re: [PATCH v2 12/63] thermal: intel: int340x_thermal: Use
 struct_group() for memcpy() region
To: Kees Cook <keescook@chromium.org>, Zhang Rui <rui.zhang@intel.com>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
	Linux PM <linux-pm@vger.kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"open list:NETWORKING DRIVERS (WIRELESS)" <linux-wireless@vger.kernel.org>, netdev <netdev@vger.kernel.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev, 
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.161.54 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Aug 18, 2021 at 8:08 AM Kees Cook <keescook@chromium.org> wrote:
>
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), avoid intentionally writing across
> neighboring fields.
>
> Use struct_group() in struct art around members weight, and ac[0-9]_max,
> so they can be referenced together. This will allow memcpy() and sizeof()
> to more easily reason about sizes, improve readability, and avoid future
> warnings about writing beyond the end of weight.
>
> "pahole" shows no size nor member offset changes to struct art.
> "objdump -d" shows no meaningful object code changes (i.e. only source
> line number induced differences).
>
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Amit Kucheria <amitk@kernel.org>
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Rui, Srinivas, any comments here?

> ---
>  .../intel/int340x_thermal/acpi_thermal_rel.c  |  5 +-
>  .../intel/int340x_thermal/acpi_thermal_rel.h  | 48 ++++++++++---------
>  2 files changed, 29 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c
> index a478cff8162a..e90690a234c4 100644
> --- a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c
> +++ b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c
> @@ -250,8 +250,9 @@ static int fill_art(char __user *ubuf)
>                 get_single_name(arts[i].source, art_user[i].source_device);
>                 get_single_name(arts[i].target, art_user[i].target_device);
>                 /* copy the rest int data in addition to source and target */
> -               memcpy(&art_user[i].weight, &arts[i].weight,
> -                       sizeof(u64) * (ACPI_NR_ART_ELEMENTS - 2));
> +               BUILD_BUG_ON(sizeof(art_user[i].data) !=
> +                            sizeof(u64) * (ACPI_NR_ART_ELEMENTS - 2));
> +               memcpy(&art_user[i].data, &arts[i].data, sizeof(art_user[i].data));
>         }
>
>         if (copy_to_user(ubuf, art_user, art_len))
> diff --git a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h
> index 58822575fd54..78d942477035 100644
> --- a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h
> +++ b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h
> @@ -17,17 +17,19 @@
>  struct art {
>         acpi_handle source;
>         acpi_handle target;
> -       u64 weight;
> -       u64 ac0_max;
> -       u64 ac1_max;
> -       u64 ac2_max;
> -       u64 ac3_max;
> -       u64 ac4_max;
> -       u64 ac5_max;
> -       u64 ac6_max;
> -       u64 ac7_max;
> -       u64 ac8_max;
> -       u64 ac9_max;
> +       struct_group(data,
> +               u64 weight;
> +               u64 ac0_max;
> +               u64 ac1_max;
> +               u64 ac2_max;
> +               u64 ac3_max;
> +               u64 ac4_max;
> +               u64 ac5_max;
> +               u64 ac6_max;
> +               u64 ac7_max;
> +               u64 ac8_max;
> +               u64 ac9_max;
> +       );
>  } __packed;
>
>  struct trt {
> @@ -47,17 +49,19 @@ union art_object {
>         struct {
>                 char source_device[8]; /* ACPI single name */
>                 char target_device[8]; /* ACPI single name */
> -               u64 weight;
> -               u64 ac0_max_level;
> -               u64 ac1_max_level;
> -               u64 ac2_max_level;
> -               u64 ac3_max_level;
> -               u64 ac4_max_level;
> -               u64 ac5_max_level;
> -               u64 ac6_max_level;
> -               u64 ac7_max_level;
> -               u64 ac8_max_level;
> -               u64 ac9_max_level;
> +               struct_group(data,
> +                       u64 weight;
> +                       u64 ac0_max_level;
> +                       u64 ac1_max_level;
> +                       u64 ac2_max_level;
> +                       u64 ac3_max_level;
> +                       u64 ac4_max_level;
> +                       u64 ac5_max_level;
> +                       u64 ac6_max_level;
> +                       u64 ac7_max_level;
> +                       u64 ac8_max_level;
> +                       u64 ac9_max_level;
> +               );
>         };
>         u64 __data[ACPI_NR_ART_ELEMENTS];
>  };
> --
> 2.30.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0iS3qMgdab1S-NzGfeLLXV%3DS6p5Qx8AaqJ50rsUngS%3DLA%40mail.gmail.com.
