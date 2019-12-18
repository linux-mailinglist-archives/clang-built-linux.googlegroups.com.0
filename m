Return-Path: <clang-built-linux+bncBDOMDVMI5MBRBS4Q47XQKGQELZLYDDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E3C123FA6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 07:33:47 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id c4sf89703wmb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 22:33:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576650827; cv=pass;
        d=google.com; s=arc-20160816;
        b=bvSV3NGK6HNizoK1H2/xl5d/FVK+6+fDLGAXovvDHS7+V6CLNY6XgslNqwCh+yCYGy
         VxpERs/VqRI1J7SJXv6SA9tPD4/UvTXp2V3MIm3lkJZRJC0A6Up9TXWsUJxQeq2VKdG9
         pIvpj48HPQ6p9m6tRFk4/X7JbvdR9OcXrUTyJ9yuBJiDH9qbaJDcfhBjgQ58kBs85C+N
         +cKCyOLxwM6+CjrBbqVrNugBSh6I1eacVHqQdP4UUfsL6PjVuKz6kmXVNGSHK7BYH4g8
         B1+0oIjMqxiP+Bz8eN9Gd3TtLolh0asEN9OJyMtG+WT2UBX1fV9zLIBsWLyUFb2vhHm3
         j63g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=54gT3YbtiBD7xedD58X5n8tn4YaPcklTrMhasizZRFo=;
        b=zC8x4ykqwRhLHPqAIobGqNdtC9hu3OWpmlMuDd/Qii0Yb9s80FT4VP8rR5zWgl7fkJ
         /bhtBqcHdsWtwDfdwDND1dJSYbN5bnYWBk2qHeNglOMyxVIHJgoKM1jmIi4A7BekFtdc
         1B0wSOwNrU3Y5q/IS+qqPXlRnKFJlC5bf5OamxNhPlAxU4XevJzbVRzw3OzNMrG3CEI6
         f4CQ/ozDCXyW04MnFP3Xbh8460Dc0Lf07/JYt4Xx8NSijz9bXp+3SyK3RVJCC+kGc3zr
         cv7elwfcJspSuD72vlFppM1j4h71EM20E21h0twpZIxCb8Li8LpeNKIEAtzmvGP5aubE
         TQpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tiwai@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=54gT3YbtiBD7xedD58X5n8tn4YaPcklTrMhasizZRFo=;
        b=ZLs1VCko17k2AKPu1OqrC17qWxbr3aI3rLSuKFebt+yThVB3keS2J1r7K5ylREk4qI
         5RRn6xwN3vETmqqLHMElkYVvDAS5Fo9pcrvy0bE2lSLQPWCwZ9K6f3zmypvxUqImN2mN
         7rF1LpSsPg6y27rkX+/M/BE9Sp4CUusS1/3aY+3A1Hq3seZkhdQKWEG7gUiNlFjw/yYD
         4qpz2JVnSIruRsKUCG4vHvZhR8HdYPQX95AnNrBvvksS289V9/+TkbTNP1DC2oxfXTDJ
         q5QoVgGk4dyGyrnvEbT5NYLyi6XC6M8ferS+gJx7FcEiDyi9bXeKknCJpIJ2HTrk+PZv
         tY7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=54gT3YbtiBD7xedD58X5n8tn4YaPcklTrMhasizZRFo=;
        b=leRaR17xvzj734ZA9+7NwBP3p/AqYxK2xJls71kMsI2UrpXCMUWC+pb7ZhVIntWElC
         GbxXJD5ohFug/uMlcybj1PGmxtKMMN+C/eE6dKXE4+SvZarZ3jn+hhQE/pWLB3RHV2ff
         vXWsEQomD/Ws9q95gzoD7gOXNp8xfXnZqDfTLnWvcXCz3boxFE6EWyVOJba1oAVuncxg
         JuZiIhM5hdj/xQBjg8vRDAaPH2QA6lluQvARMxGBSSzFEttZ2EPteya+3hL5oARmy69W
         Y1MUtDvJ0GkZO5JQL1gCHEU3pyJ+LQ9c4edFzLPkYlx1YiqRwkoR6K/HggM5FIIW9Zg2
         HCUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwwbI5Sduanzmq/tRyFeYoZTMV4kPj4dEHkY3fkJI6itfFOFm9
	aoLHt5XRUPxQk1ceC99ptTY=
X-Google-Smtp-Source: APXvYqwskaanAWRf7RfD8qDumhRHQNASKrgICIIQMhcaR61EvTOu0XKz8K1PxuHxtMwtBeJjnaSW5w==
X-Received: by 2002:a7b:cd82:: with SMTP id y2mr1185985wmj.58.1576650827466;
        Tue, 17 Dec 2019 22:33:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:3c43:: with SMTP id j64ls221121wma.5.gmail; Tue, 17 Dec
 2019 22:33:47 -0800 (PST)
X-Received: by 2002:a05:600c:2301:: with SMTP id 1mr1143625wmo.147.1576650826997;
        Tue, 17 Dec 2019 22:33:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576650826; cv=none;
        d=google.com; s=arc-20160816;
        b=Hbr+58JRVnMjBaQAjKRSNGhbYvxe7qcr9NVf3cnYYaUN1PlJjvL+XcDmQawu7J4DRd
         KM/qo3O+bDcMLPMEOdQTPAnaiOliGm5Dp0Z6ugsppCgcK9kvO6MUzR99Jw6NCmUPJ5aK
         PZbCDgE0NpXCcUn2lSBR90qaSkbvSPtIf4NQi89Tg9EDf4PgshJL+blZD7u/fyudGYu+
         BzWrjGS3VRuHg0Tc5c67hMLg3QWEZFHt7kNUvX8Er1NYbnyyS4oGConUFC1teV6O9z1l
         tiZPB59Ntahpfa/8RRDVK/9pYThmv1l1rWyhu/sqJqPswuxPZ02Hq8til88hahmlyNpA
         Z50Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=syLT/VMQSrdTdLiH8id9b9Wk9l28G0LrEdCsDhuueZ8=;
        b=G2bm3xegZlhbqeja+EffD52MFLwoH2OSm+5npZ3Og7n2lEjnHYES2zutGLf9O4+YwW
         VVEUlybIUWjmbdlrEhD5DHTgGnpmymGxQLjCvxw/m2moVIzedxjkdtBgL/nySLRjSW2t
         gXL/V3BdW1NU/ML9ce3BcNs4LhGWHWm4kznUGUVVWvITINwuWv4pKEjGlROozalsl5am
         895A6jELeah72Fg2tz4/uwLjmQjdZmfEWTHLDvyaO/cur9hvQmiy+zZhaxBaFOzjfclP
         2i2d1bXnTYFNo+BRkW5rb7GprL0Js5sOkOLNp/+4xi5LbCU/b1NYEl+Dr/lY5Ai/LCsD
         IwzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tiwai@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t131si26787wmb.1.2019.12.17.22.33.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Dec 2019 22:33:46 -0800 (PST)
Received-SPF: pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 11849B1E2;
	Wed, 18 Dec 2019 06:33:45 +0000 (UTC)
Date: Wed, 18 Dec 2019 07:33:44 +0100
Message-ID: <s5hbls616t3.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
In-Reply-To: <20191218034257.54535-1-natechancellor@gmail.com>
References: <20191218034257.54535-1-natechancellor@gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tiwai@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=tiwai@suse.de
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

On Wed, 18 Dec 2019 04:42:57 +0100,
Nathan Chancellor wrote:
> 
> Clang warns:
> 
> ../sound/usb/usx2y/usX2Yhwdep.c:122:3: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>         info->version = USX2Y_DRIVER_VERSION;
>         ^
> ../sound/usb/usx2y/usX2Yhwdep.c:120:2: note: previous statement is here
>         if (us428->chip_status & USX2Y_STAT_CHIP_INIT)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space before the tab on this
> line. Remove it so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
> 
> This was introduced before the beginning of git history so no fixes tag.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/831
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks.


Takashi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/s5hbls616t3.wl-tiwai%40suse.de.
