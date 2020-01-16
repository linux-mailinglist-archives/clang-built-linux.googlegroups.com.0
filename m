Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ6OQPYQKGQEM4IVACQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C22A513FC4B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:43:52 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id r189sf23677050ywf.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:43:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579214631; cv=pass;
        d=google.com; s=arc-20160816;
        b=06r6fpyzOH2/hh5gjV/MOl37rZcYenJJSAO8MKq2ZsGTLc0gaWCIDjmLkXo5gAtpWd
         xxIwl1v4TW5U99XpvlxCZUYmZi0Xsf7ZP4CzFh6+3IwF7/T4jIlqMdgcJYdQMDrZH3dN
         o80194/jBFVGN7V/ktVC+mRC46ZpSlmGq7cCgyFlWCXVAQDxCOALgiZravX7I6cpb0jM
         1JIUSgYlm6k/4vnrFfNYlZu/zUhsFtJ3pIFW8Rljt9qS8vmIegR8vmpBuHeOkMCZjU3V
         xqJFbfE8mtGg+szq6vPuMF1EsSWj5UKikWfXwoLbddqaxAq9bXsJ4zykCrb+ZLaxWGy9
         CEcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eHGLhhaiyQBMGvhpY/oB8bRYsY4DquyxIxc9YEUXfPs=;
        b=bwNxvnE2Omj+xXJ5pGAz4CNSZPDr2Xq8VeKVbdoVxrpc6fyu01naFAgK61gPLRMh2T
         qsQ1tZKXD4AH1iEnQ/qdKf+GypUlz/1sdHaYgp466bUAB0u5OOJQktpiHWwCJcspnVqy
         F/gyTZe0ah4sSGiUEOirx9yxChu5AHJzLLCkh31NeSfGfU/J6GRySitwHPGNECt/0w8a
         nVDpWbyyUQHkDrQ0K2I06wHnVF3YepkbnRMJfbv0OLtwWMDmDNHImb2NK+wTTMCI1WEu
         WHijSZdch3jAQZbHm8mrWGTG4K1SJLuQubmyOMiS/hGPRpYqDeQ7jxwJaEvirvgo8Z5U
         0orw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iyzctcpZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eHGLhhaiyQBMGvhpY/oB8bRYsY4DquyxIxc9YEUXfPs=;
        b=L5ywpyP5bqnYH/cTq4w92wZ6cH5vUaCze71Du57c3LxQksG/ypA6IvMnrnbqR7u01t
         /EdnZ8rLfEP1c2mLqO2QycP002uIqOJZ3TAygy8TavnpRpWkr0qpKeZE52io12aE2Lmd
         bbisXUmPAo/UD9ntCPuF/jR+RN0EBz285sFT1sq3Uo130j3q/h9sEYjQPsMENTYA9kwC
         h6zs3S79Ncjq0/F2eMWfUnFqlh8AYhtSRN9c+aIUbJPd9M54Ov4hH2IVAKYVsVhcxp/b
         MCwEEx4C8H1XBXL+zzNerFyfj+RwiqrmVtqb3Bgih9GGZG7/R8F+Uzw58GRyVmDu4Mx1
         1jiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eHGLhhaiyQBMGvhpY/oB8bRYsY4DquyxIxc9YEUXfPs=;
        b=pT9NvkuOzoC1UD9vr5PTbyji49I9JGd7xNf1La4IvyRKmeaKoW9NNexMJZ8uNK0q4J
         qB8ahGLj6+PD+Ne42a0QUmf7nKY/Cg3ij2tDHOSUK0Z13yXuOHKar0A8ojc74+L089w5
         epZyb7X0ducwwZ09lj2ktf8LjGkqgnWVDu+73VvWP6I54d6N1C4AfZ6r5cpCDhD01usd
         McBKn9GCzA1xyuGd+UQ01P6SQnQIKIRHEMWvm5/Tk8nKNb8xv8l/xnapox5ctP27DN5f
         dWwi2UK9lDy8nwYVOPzDVW1EfMFuZtHH+rOYrfUEc9hynfDa6eX8vaifOEqqyx6OKn0Q
         3qjw==
X-Gm-Message-State: APjAAAVEB3flm9tqDvPNChellcDvrI1CRiPQeHAce6kS6EykBZZH8CEf
	k+RYo1+NY5ZOfC8x6aWyfbo=
X-Google-Smtp-Source: APXvYqyyx7xa2SE6Hfs9nyDaJ9vHF8vcBHiI3FZfaFJ2Cpty/9mmPsQxIiM0NUhxYr+7jQw5OoWtlg==
X-Received: by 2002:a05:6902:68f:: with SMTP id i15mr27532633ybt.279.1579214631769;
        Thu, 16 Jan 2020 14:43:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls3825971ywd.1.gmail; Thu, 16 Jan
 2020 14:43:51 -0800 (PST)
X-Received: by 2002:a81:5746:: with SMTP id l67mr28677885ywb.265.1579214631383;
        Thu, 16 Jan 2020 14:43:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579214631; cv=none;
        d=google.com; s=arc-20160816;
        b=F6RDP2k3ackNGnUqZ5ZzYcVlyVDWsDNqrrPkpp36QuXvKUr9MEUosrvmO6N1wvqSUC
         dVCYCrS6lt73HTjl7MLDz2uObQIPU7Djr+RxlVgqDRP5CDMdYrGWAi1K4AqsxAGj1E1W
         FsPuQOUXG0boY9jLTi6x9iCpSut1cpH5PUlx2yFHLvZCOMrFfDEY7QyflUnyBM/gLVki
         ShLZgBbtELCNjjIJS2ja0MQI4X+xDY9IwO7h+4uBvm3yzVkAMc94wwgG3Lvj+NvKB2Nm
         7vE9A0M5fk+ipnYHAXljXrsfusdxs5DpoCZBTk9ZyTH/n892fDBtdLo4YDQO9wqfH2zh
         Y/+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=StK6mCQeojQYfSNaCJiF94BEEGS98R/vhelyaxbgu6A=;
        b=gMn3ZG7Mg/V91fv6tOEkOuiGpd0rIr+SxT+Hhl/6uc0BzdLzgMZiRakU39QbbTw8J9
         SpKTEGrabTdual3UAgR8wp+kyuAC6aC0xqDMUabXcy9/rlChDmJoRsIK3Ns214KO1bU3
         DiCDDFFKrQl5O9NVNwSbVqTuWc72cHYsfwhbb5xnRVypWxLtrltEWPiWa+oyyrEcUB1g
         gk7OcCs1JAWl4H0CUxsmEOe2jFTxVH3VBnb4dKzP2pH3ot28buGCIvKYjipizjLROvRg
         /zWPv6AYkxbwf9yc6ATVYhlTCQ1M7L+Nj60P3iHNKW0VF9qgtQotKdceZ+ySFSxuP1l2
         flMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iyzctcpZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v64si1314066ywa.4.2020.01.16.14.43.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:43:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 4so10954729pfz.9
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:43:51 -0800 (PST)
X-Received: by 2002:a62:e215:: with SMTP id a21mr40193966pfi.3.1579214630106;
 Thu, 16 Jan 2020 14:43:50 -0800 (PST)
MIME-Version: 1.0
References: <20200116222658.5285-1-natechancellor@gmail.com>
In-Reply-To: <20200116222658.5285-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 14:43:39 -0800
Message-ID: <CAKwvOdmFbojiubviQYqwJLLpCLky_bpOH4jYjy4WCbOinPRYuA@mail.gmail.com>
Subject: Re: [PATCH] IB/hfi1: Fix logical condition in msix_request_irq
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mike Marciniszyn <mike.marciniszyn@intel.com>, 
	Dennis Dalessandro <dennis.dalessandro@intel.com>, Doug Ledford <dledford@redhat.com>, 
	Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iyzctcpZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Jan 16, 2020 at 2:27 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/infiniband/hw/hfi1/msix.c:136:22: warning: overlapping
> comparisons always evaluate to false [-Wtautological-overlap-compare]
>         if (type < IRQ_SDMA && type >= IRQ_OTHER)
>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
> 1 warning generated.
>
> It is impossible for something to be less than 0 (IRQ_SDMA) and greater
> than or equal to 3 (IRQ_OTHER) at the same time. A logical OR should
> have been used to keep the same logic as before.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/841
> Fixes: 13d2a8384bd9 ("IB/hfi1: Decouple IRQ name from type")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch. LGTM.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/infiniband/hw/hfi1/msix.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/infiniband/hw/hfi1/msix.c b/drivers/infiniband/hw/hfi1/msix.c
> index 4a620cf80588..db82db497b2c 100644
> --- a/drivers/infiniband/hw/hfi1/msix.c
> +++ b/drivers/infiniband/hw/hfi1/msix.c
> @@ -133,7 +133,7 @@ static int msix_request_irq(struct hfi1_devdata *dd, void *arg,
>         if (nr == dd->msix_info.max_requested)
>                 return -ENOSPC;
>
> -       if (type < IRQ_SDMA && type >= IRQ_OTHER)
> +       if (type < IRQ_SDMA || type >= IRQ_OTHER)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmFbojiubviQYqwJLLpCLky_bpOH4jYjy4WCbOinPRYuA%40mail.gmail.com.
