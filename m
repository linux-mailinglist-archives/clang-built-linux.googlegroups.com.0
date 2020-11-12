Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZNTWP6QKGQEDS3SDIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C122AFFD1
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 07:44:54 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id t11sf3208412qvp.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 22:44:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605163493; cv=pass;
        d=google.com; s=arc-20160816;
        b=JIZA75drAuxXwvIowSjdkf1jkaMt6jzd0Zk7NvEK/WZsNEX5SLd4xlSERHwzEdtt5y
         IEQ2U2+TySfWCJov6FAGDKWXR6sohxR2mi/XMY6sPDk6VNJNeaQptC23sVb4TsYW60Oj
         ZjGnkiZzM0tovPAjCHCpcsANjHjKCiWffYyTUjdo8TurvEMHB7AIlWpnHfa22YvCSCp8
         VsoitX+DkU0CfYPdaVEC4YvanLSLYBtGy73B9lNlavNnc52Xf0zo0GgNtZFpFKb130At
         gIZ7wRzStahkLPge+Tj7yaqJehQhpXEJXqznDFAIMBgv7Zn/gK2whC6v8JoLwit9yxQL
         COkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gZRVO7prU35AkYybqQ+pclTm8IZE8CzFM0gnLWqPJUc=;
        b=lbhpvnKSR86/Kv/ctghM/Xr/ml3O2YkAd2Y55OXxbj7ZhQtKP6EaraA5/L3aglw2ND
         Qutr7cO0PMvI4lZf0NHtBLd555U9nAz22pLBWMRsQlbMJAAKYXrbjND6Ig99m1HcPnl8
         WEUDWt376+Rj/DghIZYauR/wIEM+qv7CWLf0Zl1ggbn8artd42NE853JXjwTbQemjsqW
         m7heem571tI6Av6USeE3gSXSyHBFQDkrl5Jo0z/c7mXc1VxGrmaYOjAySqKC4UMwyCmZ
         3FHqpEurtobL4sO3vRRnYTy3UWVuZWO70DPNz2jcJAR1PWA6WOdrBakTS21YzoXVMneP
         bErA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PII7FtK7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gZRVO7prU35AkYybqQ+pclTm8IZE8CzFM0gnLWqPJUc=;
        b=ednfx9tu0GlOTD/Ako//na+nfdXLlVVXL8JG+VysRU0N86ZlXVs9D0QnM02DDQdNnp
         XYm317pOdtFcJrJknSYzz1x5w/D0UXSIAcYYAaJ4NAXXa7/adRoicGHGWUm6zls57kbY
         xOHMkaZFxl9JlaR/WOrfVHZKdIDZuDU4SLTs6R3sNSYkIaY5xa4ruiRA75F/avVmstd5
         tzRtyUq+ZP5AUIm5MRKOqgiDUlHUP9MYpj1TtZWwuXHI4GRt9AppkpMMzt0a1aYLUBCo
         23A9C2b0AmQk92eaBVL8UCrDmneZEHflR1fBa/HAlMRaqCRkoMDo1o+qZSmbFcd3/hYS
         Mt0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gZRVO7prU35AkYybqQ+pclTm8IZE8CzFM0gnLWqPJUc=;
        b=lbFRW89TFReCy3+YnOpffF+gj0BmbbMJaL5ucxm4gs4Kx6tBX5VW9P1Q55ht/0uvYI
         55FP+yneWAA/iwwuD3wgQRFo9sZt/0MmP4caPiUBY31PhcXX41n2zwJ078JqOE8TPtMc
         /AOWBojEvN43DWd71lbA0sDMW/YZIipOVRPi8Rf3dx8vVAf42tQSmZmPSJ6mD/uCqNzG
         Ax6ls/jFwwbFbi1Ov+lGE4L909czSxQ0u1Kppqj1c1IlLy8PkB0/IYpGL/H6yjw69hAo
         U9+NmxkPrlE1b0HUwfurg2Wnr0h47ndsbnXBCSIiafRHaL9+mf0ofxeE0A3soaCaCXhJ
         QZ0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HXbISav8c71/7HPWGvupeI8E62rrM4i/f+N+d2nop5L4wrtCn
	aXbkwUlOrq5Ns1rJ7nSAxDU=
X-Google-Smtp-Source: ABdhPJwBomHZe9KFGeVTtuxK0frigPIC9e1nhlkH1VlDEK/RqdU49ldIKNJndS+PoCnnYbXYUzo0pQ==
X-Received: by 2002:aed:3802:: with SMTP id j2mr20961269qte.388.1605163493252;
        Wed, 11 Nov 2020 22:44:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:34b:: with SMTP id t11ls888437qkm.4.gmail; Wed, 11
 Nov 2020 22:44:52 -0800 (PST)
X-Received: by 2002:ae9:ee01:: with SMTP id i1mr29335119qkg.10.1605163492828;
        Wed, 11 Nov 2020 22:44:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605163492; cv=none;
        d=google.com; s=arc-20160816;
        b=KO7fBpo8JmxbXFYh3mXpn/O8ZSrtk4ChIUVoTWF9n4I4opIefuUki0awV9eQMuIGa6
         CNV9tlhiTV//cvjsQTIwICxFx2ovf6ylTBoP+QjY7u5sUzdJNG1EAcpEnmp778Gh6iXP
         /L8xreJOc5p7XGmyGAWpiogfCvYqnIaD6WI2Ig2uAYj090OeohnHy0OrBFFk/82FmY5k
         7vVtpU/YuoQJsrjorUeyM43jZvVTSkJhgCCvtPOuFQF0YoLkeiwovlinYF56h19pqnut
         oVLDKNdLlFOmdcDCp9kHZcjeUpUsaS1jVoR6BM88V+dXdnZcoszHQywqM0WatjPNizra
         Msdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1XQqXLWYBuZfCbew5J1cSz9iOhjz3qWjz1NcNiAYLy0=;
        b=vg/vcHwEWAboJtHOCBH8TUzNTu8Y/wX7rMhlO1TgJynWjPik/bqLuAqTlfh4H92NlZ
         kGpU/8rR8asfN9pkA81b9z/O2wOycM7XvIY9PHXzW+04v04o/W0NueJhj4BuGk5Es6qp
         WgvIcGo9p+8Ob/q8ym+RvSWKWsFwuxlTJqN0nZaZFydHj7XaEzP/VYdi4w7ifzJMY90q
         lkoJS/Rk5PSktJHo2pDoZoCsPQdP99JMAUEWkiZKJzjgTp4JHsaMDx1cZ8GDhOK58mZw
         9TmFHons3ILN0uF+z8aAjg47eYWnLmuNu6sRg2oi1uRt7Zigt1KTMkKzyz3c2q17J70o
         iVpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PII7FtK7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m21si266580qkn.6.2020.11.11.22.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 22:44:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C78C8208FE;
	Thu, 12 Nov 2020 06:44:50 +0000 (UTC)
Date: Thu, 12 Nov 2020 07:45:50 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	clang-built-linux@googlegroups.com, Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: Use of uninitialized data in special error case of usb storage
 transport
Message-ID: <X6zaHl/RhW5xu89K@kroah.com>
References: <alpine.DEB.2.21.2011112146110.13119@felia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2011112146110.13119@felia>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PII7FtK7;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Nov 11, 2020 at 10:08:26PM +0100, Lukas Bulwahn wrote:
> Dear Alan, dear Greg,
> 
> 
> here is a quick report from the static analysis tool clang-analyzer on 
> ./drivers/usb/storage/transport.c:
> 
> When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it 
> returns without writing to its parameter *act_len.
> 
> Further, the two callers of usb_stor_bulk_transfer_sglist():
> 
>     usb_stor_bulk_srb() and
>     usb_stor_bulk_transfer_sg(),
> 
> use the passed variable partial without checking the return value. Hence, 
> the uninitialized value of partial is then used in the further execution 
> of those two functions.
> 
> Clang-analyzer detects this potential control and data flow and warns:
> 
> drivers/usb/storage/transport.c:469:40: warning: The right operand of '-' 
> is a garbage value [clang-analyzer-core.UndefinedBinaryOperatorResult]
>         scsi_set_resid(srb, scsi_bufflen(srb) - partial);
>                                               ^
> 
> drivers/usb/storage/transport.c:495:15: warning: Assigned value is garbage 
> or undefined [clang-analyzer-core.uninitialized.Assign]
>                 length_left -= partial;
>                             ^
> 
> The tool is right; unfortunately, I do not know anything about the   
> intended function here. What is the further operation of those two  
> functions supposed to be when USB_STOR_XFER_ERROR is returned from 
> usb_stor_bulk_transfer_sglist()? Should the passed arguments remain 
> untouched, so setting *act_len to zero for the error paths would be
> a suitable fix to achieve that.
> 
> A quick hint on that point and I can prepare a patch for you to pick up...
> 
> Given that this code is pretty stable for years and probably in wider  
> use, the overall functionality is probably resilient to having this local 
> data being filled with arbitrary undefined data in the error case... but 
> who knows...

Sounds reasonable, testing error paths of "short reads" is something
that people are now only starting to notice and work to resolve.
Patches to resolve this are always gladly appreciated!

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X6zaHl/RhW5xu89K%40kroah.com.
