Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBVNFWH6QKGQED7267IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5EF2AFA2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 22:08:38 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id g1sf1368197edk.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 13:08:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605128917; cv=pass;
        d=google.com; s=arc-20160816;
        b=HeKD5hOQ+pdKpKmUiQMLvQvZIXzTpyDp8TuxTacfetPSi017ByTlFBWiq/pBQX/obK
         Fn8P0AEx08ldpj1ICZm0fUQwO2lh6fOKkfK7/VOfap4IaNfLVOXfMMc/Lu8K5jbFvWDS
         xykZwFuMq6h+yAtIsbCAXehyqtOxykHg8XrsN3YpwAJEMewsOb+mWFmcDOJPrJcyeBid
         dodfLxBEQWUYfYbG7XD6FEz1BAbziIB/35e42S7sRLi1XV4tEdGdoPiz2C/cu+Y2s/VI
         4m+Xq2lmIb1gqweEq3hfuJ8Vz9wEZSLQrQ8F0eoPuPHlU8XeNJSsaUQSJaKIJRH9HxO3
         +KUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :subject:to:date:from:sender:dkim-signature:dkim-signature;
        bh=i+Kxm0dwQRWdmsHnS+Hh55srLFJdKpx7QrCG9tWcTHc=;
        b=z5KeFXwcDcvO7oMkibfhc1bAApZ9CQO5QT4OQXv8WIdofr+nzsofoGLZw0BMaBKjjQ
         TLhcwJcywTvX8itImwOtBZuHhQs0zP7+PxDC308nU7VAdHMZJGGN2QTSb4AIkJEGzh6n
         Tm+7q/FJwbiriVYeYg8xRmODmgmNL5jPOC3+zth0cqnXavOy7x8oQnMtpC/nK9DfbUVP
         a+sObveHMEcCB5+8VuV58uIlNeq4s5LKjmHPjGl/w1+0S6Wc0faG38ptWcVmU/I6Yyvg
         o7BOT7e2bH5jNA03/bf1STB3SXYe+sDogt2o02+a4AfYefUiClsd972Sf/pI7OE2oUOs
         bbLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V4Ubwjwv;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:subject:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i+Kxm0dwQRWdmsHnS+Hh55srLFJdKpx7QrCG9tWcTHc=;
        b=B6hRDdymiISGY1gC3hpfMfHLcJBVFUCZnRPU/+V9lRbZ0VcwvAABXgT8Dk1/bwg8E1
         dpoXdaxgS+Cn74p8ehyl5TUoki2GsKgjl/1F97W53RWYnKtgiOxOuB8eh+o5Ne61ue7W
         4fYiH4bbHs0piA2HD7vGr/qJrU8+ixd3YWXIUzHlxhhFtbU1JrcjAdbMKbzrJ4rv0t61
         5EGKtUNp+dy4Tgu5gMirGcVQD9vWz2UJaOrICIQcZED9BePxUhvHtMhjb38M67jVY+i4
         ptvurf4A5pWKCRt+R7hW1AIh05ZHDk+RUmBRkRXXT+mRQDp8GVG4o5ijF/3+Tgu8R4lq
         YmIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:subject:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i+Kxm0dwQRWdmsHnS+Hh55srLFJdKpx7QrCG9tWcTHc=;
        b=m6H4Cw8M1c+AFGdf4iQS9XoFyBOwBwPxtvJVFyHMugOsjSdkqm511YI/B/5x+1QZjz
         kLXH5qXRCoUAdkETqMfn4FUo0xsPI7HELzGpaCgVLl9Sd8mcNYIwcm0dBM4g2F3qyP1U
         /Ar2ApAjWl6+pEzWTWznFTme1ELyHcVcbdUqer+5kvJd8jBJfTOOrMgKNRbbtz6Z5Wtn
         13KWVP5QdxTGPIHopmuyzFmavw2iVfveU7rGik2Mgtk4kY8JVIDl0wWwlq8bycPNE9Mq
         lvXnF6UtdWNU8d/udWg0y75phXIEdj5Cfd0XycagXiDz0eltr9ZDmB8phZBwQorDLS7o
         ZifQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:subject:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i+Kxm0dwQRWdmsHnS+Hh55srLFJdKpx7QrCG9tWcTHc=;
        b=h29NAiOiE+LTZC3MkdQjdzY/AV54krB7uw4wlm3HvdZB1ZCfh5W5NteYgEl3lRKAmn
         AAkFG5p6zuN3Ky/J7qBNv4q/6tY3xclprJRpgPKvmt4fc1MsFO4LT9mQWTc3QKuM6hwh
         YWZKikchRwcAii1H5JVlVOUlzpAeENr3skLnqrqwOhocrFeuhMRppPWMvnCD42rxVBfY
         eHcJGXkVE74xxMLBgNsAxThxb1IaIma53W7D+aXFRZsJrHQ2v11C0M61fplA+CMWMZg8
         VNyU0tmKNtUoT+TpZpeh+DhEITMCVqIapIaLxRdC8ya8a1brE56bCxJHDBH6LVVMdfqk
         aywA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sTLfuQ91RIC7IYCZg8PRnisDgPercKW/NzAduFCcsPh1zkMwT
	O8xLtAM4aahLcc+9kim/AII=
X-Google-Smtp-Source: ABdhPJxVAVG/u7+XMsBKCelnyCUipWC4aGgNBn648mHowbl1jG0gYZZ/j4p8aUxg///5Q8yAOr12Kw==
X-Received: by 2002:a17:906:b30a:: with SMTP id n10mr14122581ejz.54.1605128917760;
        Wed, 11 Nov 2020 13:08:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d4c3:: with SMTP id t3ls1090190edr.0.gmail; Wed, 11 Nov
 2020 13:08:36 -0800 (PST)
X-Received: by 2002:a05:6402:154b:: with SMTP id p11mr1556822edx.217.1605128916773;
        Wed, 11 Nov 2020 13:08:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605128916; cv=none;
        d=google.com; s=arc-20160816;
        b=EL3O3fko/GejuFXPfF4ffDNmH325qHQW9yoqEtvqFKc+NBG3rVJ2Wk4SI++oKxXUuj
         Fo0OqP6L5dvFnfyT/pBsXMIwtY/NsRHauRBdxtg4Dr4lbJmWo85UYY5fTYV2R3rHoY7e
         UckObm5iSsihQGkqQjgvCGIFBF3zPdIvdgZJiKhWqwRyyz21UFPg9y+RrLrx/NsfYMba
         1IrOq3GLqovesY5LL9FoJKkSkaTEoYEd2H2YD7K4Jo6096ocUyGYtcptxrpmIZkN6vPj
         KcMIs3v+x/roJ5wNe/evPskYkdtnzyrfUAOlccya5UEoZNeLJHLtL2UjPeH4SX/LnBrR
         I41w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:date:from
         :dkim-signature;
        bh=lDAKmgu5vfJgWqcyddHDPqIFtgiSrjvsXTxdwMbEk6U=;
        b=qlpacvQTsx5D3ifwq4rZLvDzDV8iWeGcsofo6i+mnVfBgDx47qsJvf9nec5ycPZOys
         8p8v6oWENL3vJ9JVq4IYNqIIDjx7DTXsVwB5W+2Z7DzGgWJIMNspDrJCjGJNbPhC+Vun
         4t6A1DF2b0lkK9hva6UzjQANRDnNpYuhAs3IdbyR8IZJVASkRt2aKPf8Z9NVTavriLJ4
         3/v9ZPFCDS0UouhAuI/7WochCWeg4TiuUR9yRwkQeE2cbfrRcU5t0oSIc1toSBaBvOlN
         w2PEeSOLfAoD9JbUTZP73vbqmNId+1tf4VByCjtn+ynmxd5kPWsdffxmzcVkbSguzK47
         gFNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V4Ubwjwv;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id ck1si138991ejb.0.2020.11.11.13.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 13:08:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id l5so3770020edq.11
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 13:08:36 -0800 (PST)
X-Received: by 2002:a05:6402:16d5:: with SMTP id r21mr1560702edx.149.1605128916550;
        Wed, 11 Nov 2020 13:08:36 -0800 (PST)
Received: from felia ([2001:16b8:2d8b:d300:a90c:1cb5:6919:1ee2])
        by smtp.gmail.com with ESMTPSA id f25sm1398888edr.53.2020.11.11.13.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 13:08:35 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Wed, 11 Nov 2020 22:08:26 +0100 (CET)
X-X-Sender: lukas@felia
To: Alan Stern <stern@rowland.harvard.edu>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, 
    usb-storage@lists.one-eyed-alien.net, clang-built-linux@googlegroups.com, 
    Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>
Subject: Use of uninitialized data in special error case of usb storage
 transport
Message-ID: <alpine.DEB.2.21.2011112146110.13119@felia>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V4Ubwjwv;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::531
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Dear Alan, dear Greg,


here is a quick report from the static analysis tool clang-analyzer on 
./drivers/usb/storage/transport.c:

When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it 
returns without writing to its parameter *act_len.

Further, the two callers of usb_stor_bulk_transfer_sglist():

    usb_stor_bulk_srb() and
    usb_stor_bulk_transfer_sg(),

use the passed variable partial without checking the return value. Hence, 
the uninitialized value of partial is then used in the further execution 
of those two functions.

Clang-analyzer detects this potential control and data flow and warns:

drivers/usb/storage/transport.c:469:40: warning: The right operand of '-' 
is a garbage value [clang-analyzer-core.UndefinedBinaryOperatorResult]
        scsi_set_resid(srb, scsi_bufflen(srb) - partial);
                                              ^

drivers/usb/storage/transport.c:495:15: warning: Assigned value is garbage 
or undefined [clang-analyzer-core.uninitialized.Assign]
                length_left -= partial;
                            ^

The tool is right; unfortunately, I do not know anything about the   
intended function here. What is the further operation of those two  
functions supposed to be when USB_STOR_XFER_ERROR is returned from 
usb_stor_bulk_transfer_sglist()? Should the passed arguments remain 
untouched, so setting *act_len to zero for the error paths would be
a suitable fix to achieve that.

A quick hint on that point and I can prepare a patch for you to pick up...

Given that this code is pretty stable for years and probably in wider  
use, the overall functionality is probably resilient to having this local 
data being filled with arbitrary undefined data in the error case... but 
who knows...


Thanks and best regards,

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2011112146110.13119%40felia.
