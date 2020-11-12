Return-Path: <clang-built-linux+bncBD6LRVPZ6YGRBH54WL6QKGQE2ZETIFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1072F2AFD75
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 03:29:53 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id 10sf429600uae.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 18:29:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605148192; cv=pass;
        d=google.com; s=arc-20160816;
        b=1ACdCdVmXSZRIYfEafBfMFiocRAxRhhiZu3zjAEPDtfo013NY6DNVUFYg12YyE+mBu
         h8mTaNvvkFQcm9H0htLwa+LRXrfUo2zADNN05//vpal9Qj9Xc8WXC4Y+3QZy1yPJHbB8
         9Vy1wFb7WiEesIiCxcaUQmfygKtM7BW2jRRdNewgmt2Fteaw1FjuR8Km8JciabF5tQ1i
         CqUt1kSHfVsIM/B4DQl3uGvSFcw/+qMgbtB8CPltGU8lSuwvFSwhuY14/6Q8wG2v9wf1
         Vo1Ci9G/8bIasLYwLWqq/rkgJUK2nHvbln1cDpa6I7lkLhTnP/dcqazdjoNz9cFsPi4r
         3Xdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bnoSbDxEv8PKhUqPRs/793dmUJ+IgzuP3Qcbu6w1cw8=;
        b=dLbGXswsSdv161cwHKfLqVPOvRxyXx4SEhD7ZIps6/x416lsOFwypbbfUJOoDPdlDl
         7K1IxFsUQlay+YQS56CINUmK3d0X+CVhNQOBbL3Hhm7DOirlb0pKeIPhTIi+nBcHa84q
         PyAm/btMTH2QETBH1Drwy6BzoHkKuVPrr0gn4CueDz/pZAiqm17Gk871DFWTv7cf660x
         1RNw48kqnLK8wrdtax2EWh3DAFgqly5cl4P+S44nJ3O2Utw4qQ6Inf4iKZSAF2qhBJzO
         U+myJIiZPxx9rrrcQ2/vLjeZ3WLeNLDtJ4BhkB7MIIdv7j+H+OAYnZFJqpRIhmr2n7Ih
         awFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bnoSbDxEv8PKhUqPRs/793dmUJ+IgzuP3Qcbu6w1cw8=;
        b=PeZ2jO5ypZAOqqeEjyzB5q7pJctkQ1G46OfiNaxiOJanQWJjx5O7v1M5Hp0EQgcniC
         EyM7VPUcbhRFyTTteby2c0MVjL3KmhD5prb210aSNqVVSt91ANwyH/U1Jvdp6JP4mzOr
         90heyQ1PzSGAD5WEunlOGiIrgCwDJo3FhbzQiqkP6xrwEnMwxis/zuYAGbK2y+PIvQV9
         oLiswfGc2l1xbyr3eVBYjXvgw6pC9q7WjfD1nnSru/+SVxYc9mtumvTbk//i0e4hyWAg
         Yh+bvhcL5rGGVUQN6DthkbShE3/QAvVHsf4COPCxiu4feEfyhOZS80OSWWz8FveoghgT
         D3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bnoSbDxEv8PKhUqPRs/793dmUJ+IgzuP3Qcbu6w1cw8=;
        b=UapuET89t1R6XfzlHS2kC4hrTxdyzOI46rrIOO/qf3edoTUyefCQfcLXwS6ZiMebcY
         Hkw99oZeQ1LitnWPPcIoAbyxEfgmkFbCi7gjyHHfUJKVJCB1xiGkIJmHOGA4Vh+7q8j6
         PsHrG5O0nByTBe8hRzYPd9uDSS4eMOwy+JR4ooHaKrvn5V/gKy9WmmCMxv4bZNUbp4OG
         NO+xEzHRcBeEGoikx/AAaR4oqjdUdoUcoTLgWUja1VBEsGWkGeUsREf5EfVfryfir8Df
         IPYqFCl7JwC9i/K2a19nY9+RuC/ksS0BRW3c7vyRq3MoB1YWqo/WAOQnCKiMcbAJnIgO
         vP8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531x6LZVHx0Yhcl8G/F6BS/ZvfIxVJKsfA02lpmR9wJgGRXF6ezu
	0z0Ayl+YydsKW70T0Tks+uI=
X-Google-Smtp-Source: ABdhPJyDyBe6liBEQTzhBRZVWNmI+HxESJoGv02k9pSBBN01MBq+1KZSJTXmOtvVq3kz5qpbOIdxRQ==
X-Received: by 2002:a9f:37c8:: with SMTP id q66mr3405116uaq.140.1605148192125;
        Wed, 11 Nov 2020 18:29:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:29d4:: with SMTP id p203ls94462vkp.0.gmail; Wed, 11 Nov
 2020 18:29:51 -0800 (PST)
X-Received: by 2002:a1f:ac96:: with SMTP id v144mr15058375vke.14.1605148191527;
        Wed, 11 Nov 2020 18:29:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605148191; cv=none;
        d=google.com; s=arc-20160816;
        b=VjQwB2lzcXFfvU9O0DjtZ2Vi1JAX+/lfsCalf5tfO93OqiWnEl6XjnQLjy3j8JLZuK
         bVtaznpXNpfrEIJ0L2F6i92/rdsRVgi9o3GizvmXbdLFoafx24bQxiUdXNjzvThTdvzi
         j++1kVTrais0cSzULgtIqSFhf7bb2K0BKI6QuK3VOtfIyNFDnEvtPTdEx75IRgETWXfd
         2YO/v7v07zVd4gMtSki/goL6I3dcnAuaQsKU5j4RRgLVB6QZ80TcU6D3yO0F4JbZcbYZ
         /B8XPfx8lc5LV2abZLZ2AC981UqeosxH+HKfZUNDgGWHbmxjT4229JvgFhfwolzw22RT
         bVmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zqoU3REa8LZExFOKG7NoyqW2Ic8O2msCZmbKJMVjMBA=;
        b=Q8eTWPGttjl3fLxHTV6LS0sqNo0UdWiMXXcX1Josnk8l/c/E0cYFZR0Eq/yg6GMRjs
         zfnR/tlWW3A+5D9aqjjorWU24mWA2hASBKgFx31PqcGS/GYBnG+awbmsxb7wXNdsKj3s
         SbHeLhj9sevT95zJSi+RpH21i3RbM1UinksdaSq5vP6LX0qizbQ3b74RSHPDcMGR6mpC
         mpLpp20Ea+I2RYdpCx6k1N1/FTNGXLNkiWCStFjfHYwdQOUI83nNAGw3ham74SKULvtD
         vxgkxVvCMr/BF35h8mZ13yCahuDsEEYRM3NDfegQx0mfuTGtRE9Jxw+KizrsjGmV3xDk
         5CPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by gmr-mx.google.com with SMTP id t26si242098uaq.1.2020.11.11.18.29.51
        for <clang-built-linux@googlegroups.com>;
        Wed, 11 Nov 2020 18:29:51 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 256982 invoked by uid 1000); 11 Nov 2020 21:29:50 -0500
Date: Wed, 11 Nov 2020 21:29:50 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  clang-built-linux@googlegroups.com, Tom Rix <trix@redhat.com>,
  Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: Use of uninitialized data in special error case of usb storage
 transport
Message-ID: <20201112022950.GA256754@rowland.harvard.edu>
References: <alpine.DEB.2.21.2011112146110.13119@felia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2011112146110.13119@felia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of stern+5faeb4f6@netrider.rowland.org designates
 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5faeb4f6@netrider.rowland.org
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

Yeah.  When a transfer error occurs, I believe the *act_len value is 
ignored by the higher layers.  But it won't hurt to set it to a valid 
number, just in case.

For the two early-return paths in usb_stor_bulk_transfer_sglist() the 
amount of data transferred is 0.  So if act_len isn't NULL, setting 
*act_len to 0 would be fine.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112022950.GA256754%40rowland.harvard.edu.
