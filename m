Return-Path: <clang-built-linux+bncBDSNHV7J5QDRBKPOYXUQKGQEOZN4YFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF276E200
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 09:54:19 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id a9sf24067605ybl.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:54:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563522858; cv=pass;
        d=google.com; s=arc-20160816;
        b=f4ETB8+kK0g9/oBkoCy5Hq1ddRAJ4xXeGxd0RO8wqyJm7EuhmyeBC/8FnYlAyN51Pq
         6hYUhmgwSjRdlEfYcH668PTXR8Grg20C1G/8bPWxph0FXb7Ke2ok1PrOcoLjq2XEH/yL
         aziBxdMI0X7kKowSaZwvhUJthL3j1kvd6PqAj/fXpOPs9zGjq1SEqMn+lIVMcwGeDRAY
         ChvLA5dZ5gZinpfXaV0u07t/gFQhenNyMoalbg5lTzatvTC21qe/hnZvEarTWm2W8kG/
         lL4SQsWQGbUFni6cRvIDc/c6rJA5HMG5nVC9XoSL7soxHYalCuVzBFxcO+EoeUYYhB3m
         1Gfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hyGXBTyti8whu8g6dj6wZvyacWtR26DJQaEm4DDmPqE=;
        b=rTErUxOOrOHAh5X6b4KVYpyXh7CnisC4rR+AXok2FliMFvzj2Jy3zvp3d70d+uvlP2
         To747AlNCA2cYUamghkO5JRjb6VFp1pMLMtMmu1tihxCrPAK/ONPE4emLv9pKikpohcT
         MzuwapQBnbwxcX7VbNTF+fTDiH8HtAgj0wbXmppZ+VsesOTnxf6c/L8FlktlSgEn+JdX
         /ffXlVc+nGYpoJnUnF/Bjb5CHmTjupkxQMcJnzcJZ6XdVfnQh6wu2WK/CDgNXrSv2oVn
         7WyyVNPdfJ+60QS6Mrn+2hnkedDtMZbhuvCWwUYded6AZvjdJiIHl2x8IPq0BCc2Lh6t
         e0Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jbenc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyGXBTyti8whu8g6dj6wZvyacWtR26DJQaEm4DDmPqE=;
        b=K/ltzW9I7BZ8hQnk9TyIU/TfzI2Fa2CSmkoGz7etw0eDbPi/HtmdfYUfmFvDWfmwsV
         3p2qvcZd95AC1/9sYgqG0hlj4KwTXLdm2cZKxW/9SjyfkOE9kbbaTYgoojxCgbiXrfOH
         fX0xvpbpsQ3y8yZcIDdbz1DxzOoS5nHsvJBh4Nb2p/d5PiD/jggKj4EQJuyW9Xz8ayf9
         p+DezIaEQoH0lF8RzDFtUojlUdSIjIwcu/sZuM8E0bl8Ggr5QTh0R8+PcE8358FUEZoE
         xWColfvdP44eGNjtZc+uAIlcsSD7jIpXm2b4R/1rkjoFNNUb0aRXiFFwM0nNAiT5AGUa
         Ggxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyGXBTyti8whu8g6dj6wZvyacWtR26DJQaEm4DDmPqE=;
        b=sA6A6972vQgTg6YiF8Y8B15CIGYxYBv8uknxvpsKsPmve6Ld7ATLafeBPBxwt7ag0G
         IXQ5VcUhEna5Xb9MXG9/Zxk8OXIY1HE/2e8nTxs6gqWfvrKqFapwLMZzMMfH9Dazux13
         ebgs7iSoMXLGjtwkC6l+et+ZHvzdBdB/mkWO+pnQR42Qci80v2rGuiwyxAQIhMfnWCG6
         vXmr1B/ZfzjX7ZgsW1J7H4PXVlrf01UShJw2d1pcfxO+w4RwZMF2aebdGBf9g5tfdRgo
         dea4y0HVDYdar5PdfGsF7VyH0HqPW2Y8d+4ga0PQDN149x9tLnC0NAU+Vz4DsYeWbUAd
         TggA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJzpw4uCdMhhxrC0CjM7TqFWVqHhyqzyR7WWjRtbd5Iy4ZYwvn
	jj4PQQfcvLRgIiTDbUGbN0g=
X-Google-Smtp-Source: APXvYqxNG3avboHTR88kPXN7HEJODzw30xJ95JUlIns0tKxtYe6u6eZ9NA2jsIFHoBKcragvOt7qmg==
X-Received: by 2002:a25:e0c5:: with SMTP id x188mr13496661ybg.180.1563522857974;
        Fri, 19 Jul 2019 00:54:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b945:: with SMTP id s5ls4172764ybm.7.gmail; Fri, 19 Jul
 2019 00:54:17 -0700 (PDT)
X-Received: by 2002:a25:9a88:: with SMTP id s8mr23251123ybo.74.1563522857752;
        Fri, 19 Jul 2019 00:54:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563522857; cv=none;
        d=google.com; s=arc-20160816;
        b=XWQt39WTiS8OMa4AcQiFkbJ8eGtq90XxT5j3E/es7acuuDnMox5fUSapPYbpiP+C9m
         85408cSz0+AK+bYPZMc8c4o2tiVJG8sVgG3ORF85UrNcQY5AHk28X+917Bt1kV8Zp1Cu
         +iy8s01OiiyadGUBKEDZds7RdbGxe7zh5zxHknG6tXhTT+0LeskWDPvp/TNF2zAi0nIw
         quVURGB8cCw5QdrHzwV5tqZR4bW0OsIun5ITfC2oWI/wGgJiR0F+HiQ3JsensdXOXSxs
         W1FakvAl+cot2t9KOM0bX1JqOom4nm5bP9nVqXJeQf3XrNe2bzM6OAd1VWlatujBRK0f
         M95w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=nrkOoEYvr94my201VHU/esHfabUqxyrKp9zJ9y/Xghw=;
        b=Q7Jqxeg7J0GeE9k097Y5BIDK2um+UWkfUC6RcUxh1Ghb8HdpCUdvRo5ikWBnV8x0Wg
         1FTY54BPth26ubCI4QnuWnYF9FVFKucaBqIBP3bGzwnwuA1h59cb9U8FDkTmR57T5Vl5
         CufbXOWRJQyr0/aajjIv3Uj4YFY0/CB0v65uXS4HZgh75r4/VjxyV+1Hl34iRk3sBDAK
         3FI+cnBcC/JBbEes/qC5BVlj0KT3oiNBZyFStguVGN1vSVrDkdsmW6RWwpZ9YbKnp55l
         4xNEiyVS1EN75Nh2VQujOhzO9ayn6FD3CSqgS+tirG270rJUbU0YRl/CiEhibIJ1Sy2s
         G80g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jbenc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id p188si1454771ywd.1.2019.07.19.00.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 00:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 90EED317917B;
	Fri, 19 Jul 2019 07:54:16 +0000 (UTC)
Received: from localhost (unknown [10.40.205.122])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6493A610A3;
	Fri, 19 Jul 2019 07:54:14 +0000 (UTC)
Date: Fri, 19 Jul 2019 09:54:12 +0200
From: Jiri Benc <jbenc@redhat.com>
To: David Miller <davem@davemloft.net>
Cc: sashal@kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 yhs@fb.com, daniel@iogearbox.net, linux-kselftest@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 5.2 226/249] selftests: bpf: fix inlines in
 test_lwt_seg6local
Message-ID: <20190719095412.1b4fe444@redhat.com>
In-Reply-To: <20190718.115534.1778444973119064345.davem@davemloft.net>
References: <20190717114334.5556a14e@redhat.com>
	<20190717234757.GD3079@sasha-vm>
	<20190718093654.0a3426f5@redhat.com>
	<20190718.115534.1778444973119064345.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Fri, 19 Jul 2019 07:54:16 +0000 (UTC)
X-Original-Sender: jbenc@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jbenc@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, 18 Jul 2019 11:55:34 -0700 (PDT), David Miller wrote:
> It has a significant impact on automated testing which lots of
> individuals and entities perform, therefore I think it very much is
> -stable material.

Okay.

Thanks,

 Jiri

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719095412.1b4fe444%40redhat.com.
