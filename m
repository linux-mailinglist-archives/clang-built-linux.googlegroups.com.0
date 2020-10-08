Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBNHM7T5QKGQE6J2SW3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E21EE287870
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Oct 2020 17:54:30 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id s9sf3891172plq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Oct 2020 08:54:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602172469; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZV5VHy293vErlhBM1cDLg6EnaLFzvaxYIf/hGMHOjS1cBHlGMORLUod5aTmJ5AZCKF
         gi5NEuBU0e5TpfGgN+EJqCWtVi68ZLUlb1nhS+0fKFzik/PuEFGznnoOJ0lS8nBmQc4i
         Gjd6QaOm3kDvq7nYEvoaHuRckLjjWAkOqVS0GZhaU11lFYWw1MfXfjIgD6hcLkSrWIi6
         QqhNcVmpKNlgz02JTC5fyPdRZHWAVfW7QdjqtZKagdxZ70Gw7d8vpvQg80NATuGJ5d8A
         +5tK7qxiOXjnHefxA1k9Rdp07FFSR6KbYcMMSBCGjUxcuncvyNqRwVA40Hkfs/Qu6Iok
         5Zkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JPnm6i3NlJDACwKJTzge9uoYDtrJia8h5TqOmt0cfVc=;
        b=qwIO4lVaCvsIUgYJ0V9/a/vlNTUHI6So5VYwAoP6FEilqcryG9rN8BQSxH/DcoSkhe
         gkmyO1Ipq0qbDPJRY5+SET6j5qnnnUn76gSkL5BLm6Oi0K6G7PJFmHF0Z64GXZZxu4mF
         mvq4nOxRUhckmnSvHEwV64+Q6lOIT1sqIzMHrTLGMKK7mShu4TMHRwZoIgcyZUpe0RdT
         tAP7gP95yji2f+ZKMvW4y9+BHwokuqllZ8/k4Tdrbn0rzyz6evE1Lj3N/hZQNhzj9uY/
         F3Rw4Z0aYy3D1ScRPt7jShqz7aNceMTIlSNbFWB2esgttHe43DbRbPBYcvMO9zFXjegH
         b7Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=e4G8JbIB;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JPnm6i3NlJDACwKJTzge9uoYDtrJia8h5TqOmt0cfVc=;
        b=eUIeM94iRL+KEfTt4y33ltkFshWz8q3+BXbGHL3aOsYNFcZultbKZHIoUlNoGsmVh2
         /iPlsPUvJyC52vTXKH3C7+SFui9lhQCvGC8XuIRJz5JVFvS8ZDK79kIag8/HKf9f8Cbk
         y6oAfmmtat7h17HF8TMd8xFzPIRQPx++hX36qEpgdioelbXRvbTB8I2tRaQzp9MjvZm/
         8Bsdyeqzq/LqKVIqwlTe4p6HHObAcYkvjtu0NQ/FwUX/ZRVpXViQHDAG1+Xf2C++lMr1
         BAYgnOLB7YakrQ7ERKWk8hmCf0XQn9VRXH0ipdldQyAXQTdir/OGR/DlYR5eqPUdoYOP
         IQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JPnm6i3NlJDACwKJTzge9uoYDtrJia8h5TqOmt0cfVc=;
        b=UgRewnqxTUsqKq23EtDi8F85lqHdSLFDwr0QeZkXjFyTjnmYf0tIBVhPmWCcj+qJ8F
         Pwh3Qqzkde1mRt1XIm4kkodik0RUoo6Dr2eN/A3688H+0wOcfYS3COy8GdTWBM/CcAK9
         D9RYWKLOBfBaHAansKcMUKPILI59YdjmhlpoboXNo6vFzD7YsRH8MnCkLvCmZI47CGb7
         dyAj8djKM1qslnOeFXNItapn30/lhFrgeMlhoB84RYHIFgeMiVr4pVPZZYv1aBjNYWFK
         CmC4+KTG281B54778fXZg2qvKtoorNzxR/5NbhsmrsBJvzPIkDrHhR8ho1X5pKBNJa0v
         30sA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zIufjEf8JWiU9WFZ7qU/DXNI+hHQQyY0L2q5o98I6PQJdpZcZ
	OdvoczmqH6LoxNJQIuMVLDE=
X-Google-Smtp-Source: ABdhPJzbKmI/nLFsioqtM2XrVvOpLMRMKy9OpRrNfBdo4GfM6dm7RRfj5snfZva4BYpjiChhjNJ9LA==
X-Received: by 2002:aa7:8287:0:b029:142:2501:39ec with SMTP id s7-20020aa782870000b0290142250139ecmr7888633pfm.59.1602172469152;
        Thu, 08 Oct 2020 08:54:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls2960268plb.6.gmail; Thu,
 08 Oct 2020 08:54:28 -0700 (PDT)
X-Received: by 2002:a17:902:7589:b029:d2:686a:4ede with SMTP id j9-20020a1709027589b02900d2686a4edemr8203829pll.45.1602172468561;
        Thu, 08 Oct 2020 08:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602172468; cv=none;
        d=google.com; s=arc-20160816;
        b=sYo1vX2N/6hxoYfpclEw4HErR3Qqgt24VovSV8noa7O+J1aAYeBcqCh25Vciv6+H9Z
         wKksvJJSnp7R/AAoIh1sw/iInuYXO4XYQRlb7wvdsI5Z8n14yllWdPi0S2X7PsKg8EDC
         ytzGxrjOEmZmy1jpxuHqDd8KZlsjfPey9Yv2C1PzjaC4xLppZDfjKskvwdr3ZuMturjj
         T0b1s4vi1sNdFNt9K742Ceni/9CJ8JqHfPpY14CInQ4e6KFKv5V13abAnmDT35l6EW4D
         mZtDK7Zy56ObCDD5SosK2XKYg+qjpvnc8OcCVZtcH0l4baSWTz8aREcqxAPa1S42LoCS
         d0Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=K87Z76MUaMwGT4jUWUnqmzUL4QRao9GTWVhIdgVOY/E=;
        b=vM5RNx2m65wR6y9JIvIm49ToLRdEkV9rhARaOd7XiHHv8N2EX7f5/GztS8vV3k0FJ/
         //Wb1N1xS1LguQ/gayIVBRzp0f1gJ2NCUc8FMjXsNQtyuCA4GAiTQAX3wX8YUFo3dbqZ
         UcSkXSAfXtJ9j7UytM9omuWnVyoVugrRbPPO8jRB6Dyckf6y0od5RIW/fncsIicSsHHM
         0F7M/iGr8kZQraHlLQG1gLFefnOMqVhrt92GsHk9g7Tvw92QZhUiW8zIWx3YZzoACu3Y
         QeHHNQPpwxr+FYeZ534cnmC0CaECiT9TjSCnSjI9dpKo8KJ1+FNywOVM+hAREZp5xQGQ
         V+3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=e4G8JbIB;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id mm16si390771pjb.2.2020.10.08.08.54.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Oct 2020 08:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id d197so6740052iof.0
        for <clang-built-linux@googlegroups.com>; Thu, 08 Oct 2020 08:54:28 -0700 (PDT)
X-Received: by 2002:a02:6a4f:: with SMTP id m15mr7245672jaf.2.1602172467984;
        Thu, 08 Oct 2020 08:54:27 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
        by smtp.gmail.com with ESMTPSA id g17sm2801603ilq.15.2020.10.08.08.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 08:54:27 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1kQYFO-001WnB-6r; Thu, 08 Oct 2020 12:54:26 -0300
Date: Thu, 8 Oct 2020 12:54:26 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jan Engelhardt <jengelh@inai.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-rdma@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: remaining flexible-array conversions
Message-ID: <20201008155426.GE5177@ziepe.ca>
References: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com>
 <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
 <20200424121553.GE26002@ziepe.ca>
 <36r41qn8-87o3-2pr1-856p-040167pq097@vanv.qr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <36r41qn8-87o3-2pr1-856p-040167pq097@vanv.qr>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=e4G8JbIB;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::d35 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Thu, Oct 08, 2020 at 05:24:03PM +0200, Jan Engelhardt wrote:

> In the case of the RDMA headers, even if we assume best conditions=C2=A0-=
-
> a block of malloc(sizeof(struct ib_uverbs_create_cq_resp) +
> sizeof(u64)*N) and not some struct=C2=A0-- it smells a lot like undefined
> behavior, because ib_uverbs_create_cq_resp::driver_data accesses data
> as u64

driver_data[] is never accessed, it is only used as a pointer. Aliasing
should be OK because all accesses to those bytes consistently use u32.

Fixing the compiler warning requires significant edits of kernel and
user code, not entirely sure it is worthwhile.

If someone wants to do it let me know and I'll give some guidance.

Jason

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201008155426.GE5177%40ziepe.ca.
