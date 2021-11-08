Return-Path: <clang-built-linux+bncBCC6PY4IDUIOXWNFRQDBUBHD4CCUO@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 08167449BA7
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Nov 2021 19:31:08 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id d13-20020adf9b8d000000b00160a94c235asf4297117wrc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Nov 2021 10:31:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636396267; cv=pass;
        d=google.com; s=arc-20160816;
        b=tO6jp/F7+cG5Z1pSw1J15S01e8cgNSXpDPjaBrJXSFNvLYhBtxTIED2moIMIgAcQD5
         WMJ9Stw58gqYaPHYW3g1TeWw4c6/j3+AEN96D55F5CT0iNohvJdiGZhoPGHgYL0NoaHA
         EXgzIBF08PumVtvXLw4UpJP4kAXUn7WyIUfcWriWPSb17FIYD/E4Y8J2ZvWtoNRvt+FV
         JyLpxvD4xraMRAGATj0rNHn6Kq00pUiivNh1buJRqH6TCf/vfHeuKyYRiUtwetQcnOmJ
         be6wN3PuXOMZaskHAzZHhFVl9G/v/uvSx2En5+tJJcmMB/IDJA2HZeGO1bCaG/a+R7wj
         71Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CjpuSJixSXmw/+wTTyADUAY+XALRbccYMfkasB3AjBE=;
        b=zVw29hX0J/jQqC8EgFBdQNdR7/BqYPSPN9uZzHhEO/qjrUKOTkE4yZacQ/sb8CMh84
         AvXsjSXH8qYBbGOBC6MN/EBDhXYogO/2Hl7WWkJ1/ZrixaLzOOD/bbfT9phf/c6ng4VV
         8/NQe3Zi3xkbYUNR4OLNoQrqSyfV7+SV7oIe6+K+6Au6Igzb3h5K/U1SztIFuqrTHqZ8
         oSyLN5bk3Pah4UyQ5xdwl5CNJxEvQ/EB8SSKQG4HZT3/UJFIOih3rtnLi5/2Plvf3/rU
         JyTMSY3zhlhy72072cT11L/IGiksYoq01YU/bgBWMZtdejAVlE4Zko/Rdo9+AwhIkBS4
         5E5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=oR4Rs8Lr;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=mbenes@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CjpuSJixSXmw/+wTTyADUAY+XALRbccYMfkasB3AjBE=;
        b=tRK/Nfm4224WEcyd5GqL+OW4khOgMgn5aHpmdbyYS//TbSnMN0bAdgayiejhmgJYn4
         VzWSgnQ7MNKkkX+1+QX3SZF06+EYkUwPOHkwept5bxNlkbmGEW4ofUTceIK1xcuGlK8z
         Gx63pgvEw1kma8on+tuNL8yVpJTmb9psMSocRb1THfcSwQxThTBBUA5ETZw0okwIp89C
         lR108HYEO5LU67HWifRJ6ZY/QTG8IQKA3v+qMEf1Sr83en+UDPo/4bw8i94pi8mQOese
         6lphc6DUD4vVYUSEBkTgUfvE2IKt4QJ/dkDvo0ciipvPDh8p4w0b4jN6OLAC3CdCIdQ7
         XMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjpuSJixSXmw/+wTTyADUAY+XALRbccYMfkasB3AjBE=;
        b=BfnY8Vc/2iButibPQGZHAMbxqVQEruWEr7qvu/gsSUQRhTyu5klHPDE12cWZerDQkQ
         5rq/yr46I7pTfUC9Fd2i2nglZC8JizNYL7sbEyqNOxWOtARXAlzSeNlvdQIPmWxoPa3N
         9QnAMVb5ifFhELFzWddFjeKyvIX8AmgPZjgqRd+sRkvF/sI1i0ghd7tUi4OK0c7Jtko8
         +ZEKiLkTzXjKn9N0HwbU33CvYD4OhtZfW1DZYziU3y/57OUAQhjNiHKr+2xbnhtNE7m8
         BMT3sFSl6rOITBLzhUdSpgShk/LLJRaW5kwltFpOyZ71tG4pUYFGJk0FGc/1m6Xha08e
         ZbeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332eZdGOo9+vUa4a/Q6PpY2LRebWP4nw5fAGyp1asqjwOTQWBl5
	V2wcEI0oPglehPBEyNgwJ18=
X-Google-Smtp-Source: ABdhPJzEmZ4qjporRGNUjEJSMNYvE9i/p6i1aFllgSvQEERbPfJ/4gZv+qK3Sz1Z2eCRF3bVClCRVw==
X-Received: by 2002:a05:600c:2308:: with SMTP id 8mr312665wmo.179.1636396267724;
        Mon, 08 Nov 2021 10:31:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:80c3:: with SMTP id b186ls77948wmd.2.gmail; Mon, 08 Nov
 2021 10:31:06 -0800 (PST)
X-Received: by 2002:a7b:cb10:: with SMTP id u16mr355080wmj.65.1636396266828;
        Mon, 08 Nov 2021 10:31:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636396266; cv=none;
        d=google.com; s=arc-20160816;
        b=rThsnKEu+/5LTZFb5OgPC34iNZh+7xaQYzM1RGap6EN8obwsO8iKXfKWaYFXVSsi5N
         wMsmdWZWU61ghpKBbAynw9WWThl1JXPyy6JoeEAH4no5b9v/a+47cvZc7FLqrV8v5xsR
         zIRkA4AUQ7jihKgOMzMJH4oZvnEhHbQ/Y58nCUdRTST0hfR+uMEUlw/IQAiLF+7yZv/3
         Tej9xQ0YnBtz1pqYntVjYzMvvaW876OwQwbm5UlkY3/y2q9p0yfu4x4Gra26HF/lteGP
         4vPqBgAdrSutGkeZuuabJrdylyUeRBG+dXgFB7+KUBaWCh1TIGe+CpZjdpED9LmGfvsm
         R/iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=XCt44ciTjHPqBO2xWONoM27y235Uqj1XS1pgFKfh1lY=;
        b=BGLURRQ0/xuD0QMlehnxh82XBI16V6pOyj9DNIl+lijBEWn5xKt6P4mcJCavZXRCW9
         Z4PHDHauGYeKDKWTnU8U792k6DVimueBjX1WyplrFxZvFqzSGmtf4gVnCz9scxvtDIro
         cyE45B/MJaVisfPeqGKm7N2RV8RWtTyNkJg0EQG8a4C7dBtJKu7LXgzAIvgJubR24og9
         QJck5udixD7y6Sbe4ajizEtJ9Wczjz7TGljRfQXhlMCa4EsThhnRc/5I3kdSldC//9l3
         Z3jojlGb3zqe03lrqnXjB/B5W14JFxYzv1HVs7HMEPzvMPXcH3Y4NrGwBg5QVCDIpXCO
         yeUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=oR4Rs8Lr;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of mbenes@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=mbenes@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id d9si596517wrf.0.2021.11.08.10.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 10:31:06 -0800 (PST)
Received-SPF: pass (google.com: domain of mbenes@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 6F5861FD4E;
	Mon,  8 Nov 2021 18:31:06 +0000 (UTC)
Received: from pobox.suse.cz (pobox.suse.cz [10.100.2.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 42AC0A3B85;
	Mon,  8 Nov 2021 18:31:05 +0000 (UTC)
Date: Mon, 8 Nov 2021 19:31:05 +0100 (CET)
From: Miroslav Benes <mbenes@suse.cz>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
cc: jeyu@kernel.org, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, 
    kafai@fb.com, songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com, 
    kpsingh@kernel.org, nathan@kernel.org, ndesaulniers@google.com, 
    linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org, 
    clang-built-linux@googlegroups.com, mcgrof@kernel.org
Subject: Re: [PATCH] module: Fix implicit type conversion
In-Reply-To: <1635473169-1848729-1-git-send-email-jiasheng@iscas.ac.cn>
Message-ID: <alpine.LSU.2.21.2111081925580.1710@pobox.suse.cz>
References: <1635473169-1848729-1-git-send-email-jiasheng@iscas.ac.cn>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mbenes@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=oR4Rs8Lr;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 mbenes@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=mbenes@suse.cz
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

[CCing Luis]

Hi,

On Fri, 29 Oct 2021, Jiasheng Jiang wrote:

> The variable 'cpu' is defined as unsigned int.
> However in the for_each_possible_cpu, its values is assigned to -1.
> That doesn't make sense and in the cpumask_next() it is implicitly
> type conversed to int.
> It is universally accepted that the implicit type conversion is
> terrible.
> Also, having the good programming custom will set an example for
> others.
> Thus, it might be better to change the definition of 'cpu' from
> unsigned int to int.

Frankly, I don't see a benefit of changing this. It seems fine to me. 
Moreover this is not, by far, the only place in the kernel with the same 
pattern.

Miroslav

> Fixes: 10fad5e ("percpu, module: implement and use is_kernel/module_percpu_address()")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
>  kernel/module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/module.c b/kernel/module.c
> index 927d46c..f10d611 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -632,7 +632,7 @@ static void percpu_modcopy(struct module *mod,
>  bool __is_module_percpu_address(unsigned long addr, unsigned long *can_addr)
>  {
>  	struct module *mod;
> -	unsigned int cpu;
> +	int cpu;
>  
>  	preempt_disable();
>  
> -- 
> 2.7.4
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LSU.2.21.2111081925580.1710%40pobox.suse.cz.
