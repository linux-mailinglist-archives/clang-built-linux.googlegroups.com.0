Return-Path: <clang-built-linux+bncBCC2PRMO7MMRBGO732AQMGQE7MQNC3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0372D325140
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 15:09:31 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id s12sf4323879ilh.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 06:09:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614262170; cv=pass;
        d=google.com; s=arc-20160816;
        b=dhoynglBQynOBZo0SLyP+qhdvjJel+Yo/t95hyHVaWUUtvjaP6Tkl7LFM8b4tTpkUn
         UObbconFbQfbF6P3wo2oDtM8iND5g+gyJDajIvLiSUad9rBzEHPKCL30YRRtGLcmJc1L
         oqgI63Lds4CvItrIoUrj80lOauT/u3GyN+yk0GW49V5HFyjhDc59YFfW8J1GDjLs7afd
         X4LqyRtXlA9948qjfzeBNLS8qMiOceXQ6lZi15hKpYPbN17xfUuKcCpcAyIJz63KFGET
         OSkYwAn3oLScFhU1ZI96WxB1jlkfCAw7YauN4ig9EwhzNMfCcTUWSjh5IVCYtvtTbiqF
         TyfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4hTgK1PJcpazhaMoAeKcN9gwhj05z7vWvpJAtfrbOGA=;
        b=phYHTng44K1az5y/qkEWg36jqNEu+glNUIBfQz+O1yBbKdNAlJ1HETbd3WIA7IVPi+
         g9hHLewoEukOMuPXGX8Y2Qxz9L/pm8miQ9GPvvK8K9fmf1od5twsODn7sLiiC6mR8vC/
         ZZxCZO+wdSqfoEF38EYGl7WRy1iD58o7rkLNkOH0GPGinSB2NU5ZWdoAIjkpddDHf1lH
         Mb/wD1NCQDMdQHErdC50bBJP20EybRY85UkeawykVtQNQ5zzfPDHaeKx/FFigttimEph
         vyRuUJZ/BxyDdPz2WwTOan6VvnDBXvBB+Fd2KB0bThGVMJM4wt20xMITXmFvHKbcftGK
         APcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of emil.renner.berthing@gmail.com designates 209.85.219.169 as permitted sender) smtp.mailfrom=emil.renner.berthing@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4hTgK1PJcpazhaMoAeKcN9gwhj05z7vWvpJAtfrbOGA=;
        b=oqCyGgU1517mpoP7kaCYn9sIPkp2Mfcfkdzb1LvihWE+axajyiEh6ZO77q3yg6/ao7
         IQIecLjb6hj6e41o/XQzKwo8uvMqFXhCe/J1BOLvX0T77AwMbbpvjcg6hXNuAtvLhiaG
         uTc/iW7XU1UJxfBITHMkpuCUw9alkPSBbZgHrrhHeZCXGRcQx8kRQbvhv2ycxXLNLWdB
         7+LMwgSH73e1KkuLL2R8l13oB7Y6VFLSJD8+B0khSBsjyh21ZcltmWNC8YJRIT9CD5bM
         gS1zkHQ9GvYb9kpM66g1RuZzVGMRNS9GM8yqJPbm6Zy9NuSa25yxFjkPM4QMtXBYjgLf
         oaqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4hTgK1PJcpazhaMoAeKcN9gwhj05z7vWvpJAtfrbOGA=;
        b=KWE4aYegaPBZe8UBaWx7hFYN34zh9YNbxgdO8jXfRKGXyPdaGWjUgm1OzK5vZVKW+O
         rSeuPVaImLD36dI4QiUHhdqhNgRAPWXk+bvk1RJoKmhkyHBGtqbjYrm0NGwCSnp0kREa
         XAen7tBluckYLkO0aRq1m39hQhdzqK2wL+m9pEyqRDjZrVI7i8rHaneV8Je6WdPWImtM
         a86m4MLCEAPOE78Q7GKRo3wEoEVzyc40VXAbX6uuoEp7i4ROZo42YeSil2g+wkShRQ92
         Ltx2z0aB8xCYz0eVKwEBJpy0VqMk/f2J4xpz5cvgxGkiJlij4S85ElQOzC+f1vKthV7j
         Ghng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GhCwcDDuO9ZeSlVRAzw1ZiDitrVrg2rUaiFHvZEmRZDoWHLB+
	c+JeitKggVatClDwk9CLGyw=
X-Google-Smtp-Source: ABdhPJyrALkkpIjlGJrHbwjpNPpsUR2xDKyywQWEeSJUkMM2erLpUdoM8DCDGha0yfd8bvLldnz19Q==
X-Received: by 2002:a92:8bcf:: with SMTP id i198mr2706663ild.152.1614262169746;
        Thu, 25 Feb 2021 06:09:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:860b:: with SMTP id f11ls1058690iol.10.gmail; Thu, 25
 Feb 2021 06:09:27 -0800 (PST)
X-Received: by 2002:a5e:9612:: with SMTP id a18mr2740276ioq.209.1614262167292;
        Thu, 25 Feb 2021 06:09:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614262167; cv=none;
        d=google.com; s=arc-20160816;
        b=XWVefZifkE3IuB9S3MGkbRkEGShBJX8AwrX2gvm13M0Cfzt8CsK4DtKZ/UYSXKNSxY
         7ITbfOEtjEJmkIZL7/y5/H/uGrQmnQr3aBsESRFyQ9WP2FtUmHbC04c4CHo46kjL9ICV
         PMHzGM3GfASpV8B/5ibrHPlD4nMiXzFx826yYPvT9eHG/ukeuU6talpd88QrfVm9MZeV
         zp1sfDFd/gbaLAbxdv0ZarvPhr0FcPhHBaqJeKfC40/bzFHwJe6ZEF5Lw+KXQYQC8Ymv
         jotBhsr/Mo24isjyJZCpzYX7F6OKPauH9AYIZsgKMRZL2IebkW0Q+NjBJnL8lFwQW04x
         y5Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Es5XNJa+9iwk/MVy1/C4neul9HbJdUAtiHxYan40OFg=;
        b=Xs4jw2hi7nbUYDc97mrBYYEvA6zBkj5XqYclsZBiLB3GlF1nZZtcz8tvuBWrjsc5R9
         GPrigT1YqW/PCbc6J2KGqca7A/xBOzrFnrbH6sR6a35OO4w35M0N83IXUhWbJcp4fQ3J
         K6VOgpIFIdOqg/8Ug9Q36KkrFlg+9gWwKWy3anr50u9JyLn4UgTQj6nDCO/2XtLwg0Va
         NErsQLb1icdHuZtsTXKYomMBwnEwEGQ5ovziSAZya9/ht+OHAVBVMfFm+ZTzLZuREeTE
         uGYepbriHTBMZn39I5Xj4ZiJgqdE3PAXQE19UBhxmbJ16zewgjpSMdh9rua1Q2U8lHiX
         RuRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of emil.renner.berthing@gmail.com designates 209.85.219.169 as permitted sender) smtp.mailfrom=emil.renner.berthing@gmail.com
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by gmr-mx.google.com with ESMTPS id s10si271101ild.2.2021.02.25.06.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 06:09:26 -0800 (PST)
Received-SPF: pass (google.com: domain of emil.renner.berthing@gmail.com designates 209.85.219.169 as permitted sender) client-ip=209.85.219.169;
Received: by mail-yb1-f169.google.com with SMTP id u75so5499171ybi.10
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 06:09:26 -0800 (PST)
X-Received: by 2002:a25:bbd0:: with SMTP id c16mr4092373ybk.23.1614262165784;
 Thu, 25 Feb 2021 06:09:25 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org>
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
From: Emil Renner Berthing <kernel@esmil.dk>
Date: Thu, 25 Feb 2021 15:09:13 +0100
Message-ID: <CANBLGczcWOYyEavx6H1Uk-KvQzTJoq2qC72f22K8ZP-TS5hSnw@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Jon Lin <jon.lin@rock-chips.com>, 
	Chris Ruehl <chris.ruehl@gtsys.com.hk>, Alexander Kochetkov <al.kochet@gmail.com>, 
	Johan Jonker <jbx6244@gmail.com>, Vincent Pelletier <plr.vincent@gmail.com>, linux-spi@vger.kernel.org, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: emil.renner.berthing@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of emil.renner.berthing@gmail.com designates
 209.85.219.169 as permitted sender) smtp.mailfrom=emil.renner.berthing@gmail.com
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

On Thu, 25 Feb 2021 at 13:55, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
>
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
>
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.
>
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Emil Renner Berthing <kernel@esmil.dk>

> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..972beac1169a 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>                  * ctlr->bits_per_word_mask, so this shouldn't
>                  * happen
>                  */
> -               unreachable();
> +               BUG();
>         }
>
>         if (use_dma) {
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANBLGczcWOYyEavx6H1Uk-KvQzTJoq2qC72f22K8ZP-TS5hSnw%40mail.gmail.com.
