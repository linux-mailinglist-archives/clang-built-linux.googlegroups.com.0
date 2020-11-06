Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNNZST6QKGQEQPWOHDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id C692C2A9368
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 10:51:50 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id i15sf558364qti.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 01:51:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604656310; cv=pass;
        d=google.com; s=arc-20160816;
        b=xqFGcj8+CVslgVCe51W8j3DIBPf2y6spEB8Ais2D77GnDA7r721TzVQ5GfBpvBklke
         W7dGuAe3pEIWGdK77RgW2cw/FBAVY+wqoP0VugkDc0uzKa6zGYGFDw3BOLUT0S5hgsFO
         QMWrwlrZMysiOJriwKthwQBomaiZwuy3aABs8Qik/mfO66HRBumWY7j8IZtQiXOePGSy
         8DWLQ6iG8OR0n8sO8KmbI+uyocvKPCO+FN8knv59Nvwk+HYgpKyhIT1FkNOOCIHH+RDH
         DaSZDj7muyItVRQr/G6qWBuKLNlDVbyqMNtd8zW16kfMOci2PoDewXVw3go4Y5STEI+S
         GIjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=rJEL2QTlgVLdYEhqjR65rYuDgQ2jrHf4uka6E3Nm+g8=;
        b=ARSntwvC9fVnlKbH6tfzvyPqrb/VPCI3YF25LMJMeisIGgMSX5LkO6Ym5BUsHZLO+9
         YDP0VD2FHq3Ej4IMVLzAgTR8jmoLXHhWKjxeCSL69OQ+HUyrZ7KzBKz0J/m7p9bCq0x6
         Tbgbzs8bLGCN1n5H9XQhaVAuAm9LrhtEymBCvWwmt7kTh5d8McEfpf0vCahTqGMtUtUm
         ZJ4kLVw2+o4yh2kJw99E2xucqQQmtlSOwXv2yHBmiJoAZd4MNuN+52YTCoNoj+K2Z9GY
         qdPIB3/RTySmWDveLGQmnOn3Ehswcfk7PKos5l/aBz5Mrr3XhrEvO536dmILNExzl/Gv
         n1wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ExjoaigZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rJEL2QTlgVLdYEhqjR65rYuDgQ2jrHf4uka6E3Nm+g8=;
        b=YVFNZi2n+S8yRUmLJRU0F8uf1E8ytWUG65P1Oye689dZLhoVty0o2CxVcLjiWiYd4f
         kSXfaMXUYTeRshhvbSPAVpsXJqSsssiBOJkVpSWobNLPsTtS/854x6m4wVMmqgcIAFPv
         1297Bd5hv9zo/ULZzosRDfhrnDyTg6G/y9jVf0XNWNHIGJscMOahg29lu+WdDCvdOAkT
         UWYAIwKTQ0/uHmkUkVnyjOTShgMLmab6Ph+8F5iGNSSWgjFFJ4jbz97u/td0TaRDL8sp
         KEZSDfALOWp2311W3Do3VlBEr5Ju+QN8thKZPAFPo65OjJ2mwa4hgXpWfAyBE6rU3+I4
         aB9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rJEL2QTlgVLdYEhqjR65rYuDgQ2jrHf4uka6E3Nm+g8=;
        b=eKD0saHSjhoYBJI7EqbXAZfV98Omn+i1ZPJiuZLEvdt6YM0EqOW3UkaWZ7TDtlxYp/
         QNb4g4OFciQC7xhtD8XTuKgT/12d47EqgBCAJQih+HTWK9k2nrehEukgGqkEJk0ufReH
         YYsSDXjod6dLK2XzAhNSUMVTo0rGUx1UdYt55nQjGAnaBVn7jwMSsmsHlHAYYC3euVsR
         NWSIEghZwJ05T3Vcz0kBxHDwW1UzytpoOYifojr6eygZD1MEJIWEGy2xvF9Bjqp1oo0B
         niuE3/LDPKtMnRdlgv/InYp4WJnr/zR1elIyCiVGtfo1afZ5GpOyAgOMjhHy/CFpsKwr
         M/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rJEL2QTlgVLdYEhqjR65rYuDgQ2jrHf4uka6E3Nm+g8=;
        b=FIxgBenBu4DZ1+xAYJ2HFTeA4wJjMq9gGKD9mJRJfHHCpbaDTbRg5zhEe+LGGSZSzD
         VZFr/ffjqJxYYUmySuezhCPRrueMOEbSK6eDokvTxds5wVwxk5uxFdOGqSPxagBV1qxU
         +XS9cvMj36yk9aPQeSOuL1IOFMa+jknlgx0IQDPZFov64RSSfFFG5I6xAoUyjYdrrF2/
         tChRPl2M4F4+mnA5mMj4T3Q7Jw1klsZqQvieAY4ZRsgy7y26WB3sldvi2+C2X5IjKsiB
         RUZKduK6qYt6mRLp3YseWsXYgo/ZT5fWcumB3d6fZSF45K1bdknwlW8bAK81rwRQLX33
         v79A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qjlQvaKTQ5volhs9xTe/oNFc0Ihc/dtyVM422W+BmA5i/aLw5
	UeI4/HCYVoTOiVFphxG1HF8=
X-Google-Smtp-Source: ABdhPJzrpuYkgSWdEYNLrdwM0bcW6Gilz7cZU5hv88uRgnxayW6GxISG0ujfvjfHq/yV0A6MtjIVPg==
X-Received: by 2002:a37:508a:: with SMTP id e132mr684993qkb.28.1604656309917;
        Fri, 06 Nov 2020 01:51:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:94:: with SMTP id o20ls322030qtw.7.gmail; Fri, 06
 Nov 2020 01:51:49 -0800 (PST)
X-Received: by 2002:ac8:7207:: with SMTP id a7mr742373qtp.40.1604656309497;
        Fri, 06 Nov 2020 01:51:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604656309; cv=none;
        d=google.com; s=arc-20160816;
        b=HKGK1HMyfSrLvNuclJ5IzRYf9DxweW/4Sy9gdsDx0fg2uxXGKJJKqI3809r6Ilcj1G
         opyHWfJTLEKuy8BhQtotJfVcEleugeXHHisZJXQ+j0yJc7wBEaN0ZB/dvIVumm7PNq0L
         QbnHEfOctcs/AKMey6gJqHd8NO7OtD+WF5tQ/A/67X+bCPrrWJm5DAFu7CRb8LITIJ2Q
         eY4H8XDNddQrRVHZ++XRz1+Bs55x1FpcIECXHASWTVCS2ycYSisqd3CmbkT+PCMrFSxr
         F7VfpuYreHz64psPiWWyZ7z30pHL8zTP5KW396NIrJUido4zO8KMQYDnVGRfIHZinl4Q
         o+FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mc9+iPglmE3qdIFo4WRNtRliEo4jSzg+7hnP+M7PZTA=;
        b=JKyzcojOY+cYKtYYrdJ/+J3GEdIL6I/Z7OAzEj9cMnkbewnw4HJ+RbxNUgyzPCUpBZ
         B+e91JayMg39c8ZGY+pSKJv5Py+fU6pzxxR3DbsJYAqWr6x+UNMmawQ3Tx/gIB/qBsJB
         /SPJf2kcV+5roupN9Hn2aPvm6wmIQUyB+qqWkeaguWi8hS28e3Ye+RGK7I45b0I3WiVi
         Qko5+h9uEgm0Xqtv5xh3Uj9ZA9PVk+Ru5XHEz4hXUkW+m+B6KfEWAjCf1kQtawUvYYqe
         e4tlTppvTw1q6lHJV/FQeN2QkYCmnEG9s7QlF2aj9LXE4ipId6LfUzYEfdtUgzIiM42m
         FBFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ExjoaigZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id s190si63655qkf.4.2020.11.06.01.51.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 01:51:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id p10so565929ile.3
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 01:51:49 -0800 (PST)
X-Received: by 2002:a92:ba14:: with SMTP id o20mr781162ili.76.1604656309005;
        Fri, 06 Nov 2020 01:51:49 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id m10sm697502ilg.77.2020.11.06.01.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 01:51:48 -0800 (PST)
Date: Fri, 6 Nov 2020 02:51:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: remove unneeded dead-store initialization
Message-ID: <20201106095146.GA3269500@ubuntu-m3-large-x86>
References: <20201106094820.30167-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106094820.30167-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ExjoaigZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Nov 06, 2020 at 10:48:20AM +0100, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   drivers/clk/clk.c:423:19:
>   warning: Value stored to 'parent' during its initialization is never read
>   [clang-analyzer-deadcode.DeadStores]
>           struct clk_core *parent = ERR_PTR(-ENOENT);
>                            ^
> 
> Commit fc0c209c147f ("clk: Allow parents to be specified without string
> names") introduced clk_core_fill_parent_index() with this unneeded
> dead-store initialization.
> 
> So, simply remove this unneeded dead-store initialization to make
> clang-analyzer happy.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Indeed, parent is always assigned a new value before that one is read.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201106
> 
> Stephen, Michael, please pick this minor non-urgent clean-up patch.
> 
>  drivers/clk/clk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index f83dac54ed85..ba35bf35bcd3 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -420,7 +420,7 @@ static struct clk_core *clk_core_get(struct clk_core *core, u8 p_index)
>  static void clk_core_fill_parent_index(struct clk_core *core, u8 index)
>  {
>  	struct clk_parent_map *entry = &core->parents[index];
> -	struct clk_core *parent = ERR_PTR(-ENOENT);
> +	struct clk_core *parent;
>  
>  	if (entry->hw) {
>  		parent = entry->hw->core;
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106095146.GA3269500%40ubuntu-m3-large-x86.
