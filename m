Return-Path: <clang-built-linux+bncBAABBB4C6PXQKGQEP5V7BDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CBA127B31
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 13:39:36 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id l20sf2001100wrc.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 04:39:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576845576; cv=pass;
        d=google.com; s=arc-20160816;
        b=V/Gv03mxDz5J08FDvtlMf4/SJyGDYo2OUIcBXgGlsWzF3SneC75LqVncFX6ic8mcks
         WJiy0gX+x0bQKqOe+7/bc793pW6i9E51qrSX5Jx84vDLrYRGoXWbWhdttGSVtLIjpBaD
         tYkKuT8qp+EwBhocRQ0o7Rok6Fo8LxY5FKIz5QE6Swb+FeQW+fZbc9K8ZL3s+2YJbzI5
         G0/0uMP33Z5XhytMcQN2NrKl7SEM0PnVrAZeele5FgmtJKZZj5e25lMcxnzXp6vmzf/s
         erO6YMd1lvRAO/AeyQI5i3oO6Qf2apUVrOyFS1uGdVrGn96SDKw/U4UKSkYDP5FPKpB2
         Xh8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EpmXspU3EAwdWdobzXOkfd/A1flS3LH8L4ir7z287IA=;
        b=KSaRylqlk7xQxRPlSMwdevjXWaXwXnpBomsz/fj+XzatFwSqnIVytUSmgVra01WArc
         MSOi2AuODZzYrjReVp5x31/BqE6K0PtX3Rm5Xc/8UK0BwMxG/Mgzw0eRfAOyxDBHMLu8
         EqkKjubKW6YetejEzHPH6Mxk6Hu4Ae2SBWNJeDqEe/oavaPSfZoxxe7w1Bs3S1bOXoLu
         eAbsD0Y8SL8vfJb34zgW9JjD532RIDyuzqKzlOK3BD9EhuQ4hOeuujaovQXYcgtOvbld
         /Tqx8WLaFVlUu/Ek1IenTZx48H8i7gPxUlsfZtZjpnFcM5KiLaHLdgiq0tWNsiV5+M5/
         E3GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EpmXspU3EAwdWdobzXOkfd/A1flS3LH8L4ir7z287IA=;
        b=DMQl8EoaoH/59a6KA1HigAIUJXnDtoaf7ucvspO/my8XO98IQLQLslTPPVUbwfZg9/
         zquFwa3Pc/2PN2C+GHQkDdIl6M1JVEtLgGGNMRsIjHRgrJY2JSgqFIfJLnEUc7fMyzsC
         u8NDHjuJE7lxTW3EPQdPczE7mlqcaqoKRsze9CO3cf29xTfBHvQCdoT0PBB+D/jli6Jj
         6/1Ryol02ZXq6HajvsjITWo0ImPUtODKlzVRKse0c/ewYgQBGdo5/7sHuGGiJ9LANdsY
         aTgbrJDTKy8nqKzH2DQjmzarRtMUxHh9p7P86wvDstU76FOzPi75u6+F9OyXLJkdW9pE
         bodQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EpmXspU3EAwdWdobzXOkfd/A1flS3LH8L4ir7z287IA=;
        b=ku9aszDhLRaOBsZZ/YTh90KyngZqJkfMDfNBvn6MjIf6Fix1aotxBcNxOtGfOoTIwJ
         NxEz246RDI76YZ7oI9azon8OFBqke/h/DlMd86WDsTu/KAoS7EW+tKYXl+yAbogH3ZnO
         uk0eli6Fx7j+qmcMM9xF/hupRpx8n0A00GV8Zh2NitRvR7aFlYNog9NyDd+3cmEERK3V
         PHtPkyNvBxBKcYR/YYiwGunqwhy+CaeGsqEoRLBFtXFaZ2XsKK4bf3qphmE0g9scT/a5
         bK8XiIBYMg/qyb4x2q2fOfVhEox2I2yYn1KU/0d63yiuxILmvqxQImxUIuBxs01GOFqk
         Ugpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWg3jP4Mz5capLGR7j6QBfFqaQv9Ow8aToi+aGoXo/Pq5RleCpU
	9QPu4EDLf4uB7peJ7h9nREI=
X-Google-Smtp-Source: APXvYqy3xrtJlFXWFhGqND493rr+jHYxqdpNrKP1kOAViLO510l8hO06xoIs3U4sA7QPzEC4LDa7+A==
X-Received: by 2002:adf:eb0a:: with SMTP id s10mr15812577wrn.320.1576845575896;
        Fri, 20 Dec 2019 04:39:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dd4:: with SMTP id g203ls2978826wme.1.gmail; Fri, 20
 Dec 2019 04:39:35 -0800 (PST)
X-Received: by 2002:a1c:486:: with SMTP id 128mr16774586wme.163.1576845575380;
        Fri, 20 Dec 2019 04:39:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576845575; cv=none;
        d=google.com; s=arc-20160816;
        b=WWUUNWT2V1JHdH+kkAn9GNuc/SbeY8ITVDMJvyqCrt7iy98bSvHHdX5XkTvxRsOGPp
         9u3NFPs25w1czNIjWtVaD5idUjuTat/RpOLuPKzmVmpM1CY7ZEMcrPWtXJqfTxeM9lox
         V1BWNLkSDpxl9JPJ+QV+X5Dtv+NmniBhYKxEGI+l5saU4+DpQCk4v2YygAtAee6AOP7S
         3XlS1W84CK2e/aXB6YgkbbkMoRM5cWHu+FmctsxHKZV01fVy3QyR5e0jyhC/dFPAi9MH
         yILPC5JS76ZxnYH3ZleaOtqZ/ZwVHXz2T9ARRi0iypaxdMZY3zp12UsaIuMZvFhlZAbt
         keyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=EEKAhjXaH+eNjmdq14FT1HWl3w1FsOXQjor8Vr2t+VU=;
        b=Q2hCjGJpcVbeyZaJbqUEvML7XD4hFXzm8I8NGSPC7Z+U19i2Ll+ttgVbQTK52kfatN
         nMZsRQVt+/n80EJVMZcnuumeRbMGatfTlqklCTKVcD9z3IVTvYhkiNvaSfXSxbfDGbEv
         /vfONxRBiqhZCwABFFPEe9Hl4NqtDGKQIJa8Pr6Ko2xdmsPA5C4Ra4Erfpe23idWu0d9
         EHViiEFkYgToB65Bx6reHaauSviki/lsKyD7kW4faPTJ6TA8wMhr9KsTe/ZnzISD2h4C
         gBcDrmd0HS/Hv6d6DmIfYBHsuwiyFiBOvK+Aygvw/jllN144y4CpvvcalOqCms/6gfB5
         7zEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id s139si477751wme.2.2019.12.20.04.39.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Dec 2019 04:39:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id B9110AE47;
	Fri, 20 Dec 2019 12:39:34 +0000 (UTC)
Subject: Re: [PATCH] xen/blkfront: Adjust indentation in xlvbd_alloc_gendisk
To: Nathan Chancellor <natechancellor@gmail.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>,
 Jens Axboe <axboe@kernel.dk>
Cc: Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20191209201444.33243-1-natechancellor@gmail.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <f915e97e-e395-7ef5-0971-1b6088cc4a6a@suse.com>
Date: Fri, 20 Dec 2019 13:39:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191209201444.33243-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 09.12.19 21:14, Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/block/xen-blkfront.c:1117:4: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>                  nr_parts = PARTS_PER_DISK;
>                  ^
> ../drivers/block/xen-blkfront.c:1115:3: note: previous statement is here
>                  if (err)
>                  ^
> 
> This is because there is a space at the beginning of this line; remove
> it so that the indentation is consistent according to the Linux kernel
> coding style and clang no longer warns.
> 
> While we are here, the previous line has some trailing whitespace; clean
> that up as well.
> 
> Fixes: c80a420995e7 ("xen-blkfront: handle Xen major numbers other than XENVBD")
> Link: https://github.com/ClangBuiltLinux/linux/issues/791
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Pushed to xen/tip.git for-linus-5.5b


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f915e97e-e395-7ef5-0971-1b6088cc4a6a%40suse.com.
